unit EditorProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, SynEdit, Buttons, SynEditHighlighter,
  SynHighlighterSQL, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Wwquery, SynEditMiscClasses,
  SynEditSearch, Menus, StdCtrls;

type
  TfrmEditorProc = class(TForm)
    sbProc: TStatusBar;
    Panel1: TPanel;
    mmProcedure: TSynEdit;
    SpeedButton1: TSpeedButton;
    od: TOpenDialog;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    sd: TSaveDialog;
    SynEditSearch1: TSynEditSearch;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    SynSQLSyn1: TSynSQLSyn;
    edtLocalizar: TEdit;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmProcedureKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Procurar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    sArquivo : String;
    dtData : TDateTime;
    sBuscaAnterior : String;
    iIndiceBusca : integer;
    function GetFileDateTime(Arq: string; bWin98: Boolean): TDateTime;
  public
    { Public declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmEditorProc: TfrmEditorProc;

implementation

{$R *.dfm}

uses
  Main, Math, untLocalizar;

procedure TfrmEditorProc.SpeedButton1Click(Sender: TObject);
begin

  if (od.Execute) then
  begin
    sArquivo := od.FileName;
    mmProcedure.Lines.LoadFromFile(sArquivo);
    Caption := Caption + ' [' + UpperCase(sArquivo) + ']';
    dtData := GetFileDateTime(sArquivo, False);
    Timer1.Enabled := True;
  end;

end;

procedure TfrmEditorProc.SpeedButton2Click(Sender: TObject);
begin

  Timer1.Enabled := False;

  if (sArquivo <> '') then
  begin
    mmProcedure.Lines.SaveToFile(sArquivo);
    sbProc.Panels[0].Text := 'Salvo em ' + DateToStr(Date) + ' ' + TimeToStr(Time);
    dtData := GetFileDateTime(sArquivo, False);
  end
  else
  begin

    if (sd.Execute) then
    begin
      sArquivo := sd.FileName;
      mmProcedure.Lines.SaveToFile(sArquivo);
      Caption := Caption + ' [' + UpperCase(sArquivo) + ']';
      sbProc.Panels[0].Text := 'Salvo em ' + DateToStr(Date) + ' ' + TimeToStr(Time);
      dtData := GetFileDateTime(sArquivo, False);
      Timer1.Enabled := True;
      dtData := GetFileDateTime(sArquivo, False);
    end;

  end;

  Timer1.Enabled := True;

end;

procedure TfrmEditorProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEditorProc.mmProcedureKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  qryProc : TOraQuery;
  sSQL : String;
begin

  qryProc := TOraQuery.Create(Self);
  qryProc.Session := frmMain.qryTables.Session;
  qryProc.ParamCheck := False;

  if (Key = VK_F9) then
  begin

    qryProc.SQL.Clear;
    sSQL := StringReplace(mmProcedure.Lines.Text, 'REM ', '--', [rfReplaceAll,rfIgnoreCase]);
    qryProc.SQL.Text := sSQL;

    try
      qryProc.ExecSQL;
      sbProc.Panels[1].Text := 'Compilado em ' + DateToStr(Date) + ' ' + TimeToStr(Time);
    finally
      qryProc.Free;
    end;

  end;

  if (Key = VK_F3)then
    SpeedButton3Click(Self);

end;

procedure TfrmEditorProc.Timer1Timer(Sender: TObject);
begin

  if (dtData <> GetFileDateTime(sArquivo, False)) then
  begin

    Timer1.Enabled := False;

    if (MessageDlg('Data e Hora do arquivo foram alterados. Deseja recarregar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes, mrNone]) then
    begin
      mmProcedure.Lines.LoadFromFile(sArquivo);
      dtData := GetFileDateTime(sArquivo, False);
      Timer1.Enabled := True;
    end
    else
    begin
      Timer1.Enabled := False;
    end;

  end;

end;

function TfrmEditorProc.GetFileDateTime(Arq: string; bWin98: Boolean): TDateTime;
var
  intFileAge: LongInt;
  vH : Word;
begin
  if bWin98 then
  begin
    //     vH := FileOpen(Arq, fmOpenRead);  // se ja estiver copiando da erro de conversao
    vH := FileOpen(Arq, fmShareDenyNone);
    Result := FileDateToDateTime(FileGetDate(vH));
    FileClose(vH);
  end
  else
  begin
    intFileAge := FileAge(Arq);
    if intFileAge = -1 then
      Result := 0
    else
      Result := FileDateToDateTime(intFileAge);
  end;
end;

procedure TfrmEditorProc.Procurar1Click(Sender: TObject);
begin

  {
  frmLocalizar := TfrmLocalizar.Create(Self);
  frmLocalizar.sTelaPai := 'Procedures';
  frmLocalizar.Show;
  }

//  SynEditSearch1.

end;

procedure TfrmEditorProc.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopwindow;
end;

procedure TfrmEditorProc.FormCreate(Sender: TObject);
begin
  SetWindowLong(Self.Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);
end;

procedure TfrmEditorProc.SpeedButton3Click(Sender: TObject);
begin

  if (Trim(edtLocalizar.Text) = '') then
    Abort;

  sbProc.Panels.Items[0].Text := '';
  mmProcedure.SetFocus;

  if (sBuscaAnterior <> edtLocalizar.Text) then
  begin

    SynEditSearch1.Options := [];
    SynEditSearch1.Pattern := edtLocalizar.Text;
    SynEditSearch1.FindAll(mmProcedure.Lines.Text);

    if (SynEditSearch1.ResultCount > 0) then
    begin
      mmProcedure.SelStart  := SynEditSearch1.Results[SynEditSearch1.Next]-1;
      mmProcedure.SelLength := Length(edtLocalizar.Text);
    end
    else
    begin
      sbProc.Panels.Items[0].Text := '"'+edtLocalizar.Text+'" não foi localizado!'; //ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
      edtLocalizar.SetFocus;
    end;

    sBuscaAnterior := edtLocalizar.Text;
    iIndiceBusca   := 0;

  end
  else
  begin

    if (iIndiceBusca < SynEditSearch1.ResultCount -1) then
    begin
      inc(iIndiceBusca);
      mmProcedure.SelStart  := SynEditSearch1.Results[iIndiceBusca]-1;
      mmProcedure.SelLength := Length(edtLocalizar.Text);
    end
    else
    begin
      //sbProc.Panels.Items[0].Text := '"'+edtLocalizar.Text+'" não foi localizado!'; //ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
      iIndiceBusca   := 0;
      mmProcedure.SelStart  := SynEditSearch1.Results[0]-1;
      mmProcedure.SelLength := Length(edtLocalizar.Text);
    end;

  end;

end;

end.
