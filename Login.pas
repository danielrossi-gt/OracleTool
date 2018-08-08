unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, AdvReflectionImage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, Buttons, jpeg, ExtCtrls;

type
  TfrmLogin = class(TForm)
    Edit1: TEdit;
    edtHost: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sbStatus: TStatusBar;
    Edit2: TMaskEdit;
    imgLogo: TAdvReflectionImage;
    IdFTP: TIdFTP;
    Label4: TLabel;
    edtPort: TEdit;
    Label5: TLabel;
    edtService: TEdit;
    Image1: TImage;
    Label6: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    bLogado : Boolean;
    function checkFilesExist(ObjFTP: TIdFTP; ArquivosNoClient: TListBox; ArquivosQueJaExistem: TStringList): Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}
uses Main;

procedure TfrmLogin.Button1Click(Sender: TObject);
var
  sPastaFTP : String;
  slConfig : TStringList;
begin

  if (Trim(Edit1.Text) = '') or
     (Trim(Edit1.Text) = '') or
     (Trim(Edit1.Text) = '') then
  begin
     MessageBox(Application.Handle, 'Informe dados para conexão.', 'OracleTool', MB_ICONWARNING or MB_OK);
     Abort;
  end;

  with frmMain do
  begin

    sUsername := Edit1.Text;
    sPassword := Edit2.Text;
    sServer   := edtHost.Text;

    iAlt := 0;
    pnlScript.Top := Round((Self.Height - pnlScript.Height) / 2);
    pnlScript.Left := Round((Self.Width - pnlScript.Width) / 2);

    slOldParams  := TStringList.Create;
    slOldValores := TStringList.Create;
    dtaOracle.Close;

    dtaOracle.Username := sUsername;
    dtaOracle.Password := sPassword;
    dtaOracle.Server   := sServer + ':' + edtPort.Text + ':' + edtService.Text;

    try
      dtaOracle.Open;
      bLogado := True;
    except
      MessageDlg('Ocorreu um erro ao conectar o Banco de Dados.', mtError, [mbOK], 0);
      Application.Terminate;
    end;

    PC_Abas.ActivePageIndex := 0;
    reSQL.SetFocus;

    cbCampoRel.Clear;
    cbCampoRes.Clear;

    qryTables.Open;
    qrySession.Open;
    qryProcedures.Open;

    with qryTables do
    begin

      frmLogin.sbStatus.SimpleText := 'Carregando lista de tabelas...';

      First;
      while not(Eof) do
      begin
        lsTabelas.Items.Add(qryTablesTABLE_NAME.AsString);
        cbTabelas.Items.Add(qryTablesTABLE_NAME.AsString);
        lsTabelaRelac.Items.Add(qryTablesTABLE_NAME.AsString);

        SynSQLSyn1.TableNames.Add(qryTablesTABLE_NAME.AsString);

        Next;
      end;

    end;

    with qryProcedures do
    begin

      frmLogin.sbStatus.SimpleText := 'Carregando lista de procedures...';

      First;
      while not(Eof) do
      begin
        lsProcedures.Items.Add(qryProceduresNAME.AsString);
        Next;
      end;

    end;

    lsTabelas.ItemIndex := 0;
    sbSalvar.Enabled := FileExists('C:\seculus\Programas\OracleTool\OracleTool.dpr');
    Caption := Caption + ' - ' + UpperCase(sUsername);
    pnlTriggers.Height := Round(TabSheet1.Height / 3);


    slConfig := TStringList.Create;
    slConfig.Add(sServer);
    slConfig.Add(edtPort.Text);
    slConfig.Add(edtService.Text);
    slConfig.SaveToFile(ExtractFilePath(Application.ExeName) + 'config.ora');
    slConfig.Free;

  end;

  Close;
end;

function TfrmLogin.checkFilesExist(ObjFTP: TIdFTP;
  ArquivosNoClient: TListBox; ArquivosQueJaExistem: TStringList): Boolean;
var SL_ArquivosNoFTP: TStringList;
    c, c2: integer;
    b_Result : Boolean;
begin
  b_Result := False;
  Try
    SL_ArquivosNoFTP := TStringList.Create;
    ObjFTP.List(SL_ArquivosNoFTP, '*.*', False);

    for c := 0 to ArquivosNoClient.Count - 1 do
    begin
      for c2 := 0 to SL_ArquivosNoFTP.Count - 1 do
      begin
        if ArquivosNoClient.Items[c] = SL_ArquivosNoFTP[c2] then
        begin
          ArquivosQueJaExistem.Add(SL_ArquivosNoFTP[c2]);
          b_Result := True;
        end;
      end; // for c := 0 to lsArquivos.Count - 1 do
    end; // for c := 0 to lsArquivos.Count - 1 do
  finally
    FreeAndNil(SL_ArquivosNoFTP);
    Result := b_Result;
  end;


end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

//  case key of
//    vk_return : SendMessage(Self.Handle, WM_NEXTDLGCTL, 0, 0);
//  end;

end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if (bLogado = False) then
    Application.Terminate;
    
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var
  slConfig : TStringList;

begin

  bLogado := False;

  if FileExists(ExtractFilePath(Application.ExeName) + '\config.ora') then
  begin
    slConfig := TStringList.Create;
    slConfig.LoadFromFile(Application.GetNamePath + 'config.ora');
    edtHost.Text := slConfig[0];
    edtPort.Text := slConfig[1];
    edtService.Text := slConfig[2];
    slConfig.Free;
  end;


end;

end.
