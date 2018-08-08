unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Wwintl, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, DBCtrls, Wwdatsrc, Wwquery,
  Grids, DBGrids, ComCtrls, Wwdbigrd, Wwdbgrid, ExtCtrls, Wwtable, Buttons,
  wwDialog, wwfltdlg, Wwlocate, wwrcdvw, StrUtils, QuickRpt, QRCtrls,
  SynEdit, SynEditHighlighter, SynHighlighterSQL, SynMemo,
  SynEditMiscClasses, SynEditSearch, Menus, JvExStdCtrls, JvListBox,
  DBPesquisa;

Const
  InputBoxMsg = WM_USER + 123;

type
  TfrmMain = class(TForm)
    dtaOracle: TOraSession;
    wwInfoTraduz: TwwIntl;
    qryTables: TOraQuery;
    dsTables: TwwDataSource;
    qryTablesTABLE_NAME: TStringField;
    PC_Abas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dsDados: TwwDataSource;
    StatusBar1: TStatusBar;
    Splitter2: TSplitter;
    dbgDadosSQL: TwwDBGrid;
    qryDadosSQL: TOraQuery;
    dsDadosSQL: TwwDataSource;
    sbSQL: TStatusBar;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    wwDBGrid3: TwwDBGrid;
    qrySession: TOraQuery;
    dsSession: TwwDataSource;
    qryKill: TOraQuery;
    wfdSessions: TwwFilterDialog;
    wfdDados: TwwFilterDialog;
    Button1: TSpeedButton;
    Button2: TSpeedButton;
    Button3: TSpeedButton;
    StatusBar2: TStatusBar;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    sd: TSaveDialog;
    SpeedButton2: TSpeedButton;
    od: TOpenDialog;
    wwRecordViewDialog1: TwwRecordViewDialog;
    qrySessionSID: TFloatField;
    qrySessionSERIAL: TFloatField;
    qrySessionSCHEMANAME: TStringField;
    qrySessionUSERNAME: TStringField;
    qrySessionTERMINAL: TStringField;
    qrySessionSERVER: TStringField;
    qrySessionSTATUS: TStringField;
    qrySessionOSUSER: TStringField;
    qrySessionMACHINE: TStringField;
    qrySessionPROCESS: TStringField;
    qrySessionPROGRAM: TStringField;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    qryFK_Ativas: TOraQuery;
    qryFK_AtivasCONT: TFloatField;
    lblFK_Info: TLabel;
    sbSalvar: TSpeedButton;
    sbCarregar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryFK_Comandos: TOraQuery;
    sbFK: TStatusBar;
    qryUsuarios: TOraQuery;
    qryUsuariosUSERNAME: TStringField;
    Label4: TLabel;
    edtUsuario: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    TabSheet5: TTabSheet;
    pnlImpressao: TPanel;
    Label5: TLabel;
    edtTitulo: TEdit;
    Button4: TButton;
    Button5: TButton;
    GroupBox2: TPanel;
    SpeedButton5: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    edtFilename: TEdit;
    cbTabelas: TComboBox;
    lsCSV: TListBox;
    Label8: TLabel;
    Label9: TLabel;
    lsCampos: TListBox;
    odCSV: TOpenDialog;
    qryCampos: TOraQuery;
    dsCampos: TwwDataSource;
    Label10: TLabel;
    lsConf: TListBox;
    ckLimparCampo: TCheckBox;
    ckRelacao: TCheckBox;
    pRelacao: TPanel;
    lsTabelaRelac: TListBox;
    cbCampoRel: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cbCampoRes: TComboBox;
    Label14: TLabel;
    edtValorFixo: TEdit;
    chkAspas: TCheckBox;
    chkAspasResult: TCheckBox;
    qryCamposCOLUNA: TStringField;
    qryCamposTIPO: TStringField;
    qryCamposTAMANHO: TFloatField;
    qryCamposNULO: TStringField;
    odCIO: TOpenDialog;
    sdConf: TSaveDialog;
    GroupBox3: TGroupBox;
    sbCarregarConf: TSpeedButton;
    btnSalvarConf: TSpeedButton;
    GroupBox4: TGroupBox;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Memo1: TMemo;
    tblDados: TOraTable;
    pnlScript: TPanel;
    tsLog: TTabSheet;
    mmLog: TMemo;
    tsProcedures: TTabSheet;
    Panel4: TPanel;
    lsProcedures: TListBox;
    Splitter3: TSplitter;
    qryProcedures: TOraQuery;
    qryProcText: TOraQuery;
    qryProcTextLINE: TFloatField;
    sbProc: TStatusBar;
    SynSQLSyn1: TSynSQLSyn;
    mmProcedure: TSynEdit;
    reSQL: TSynEdit;
    SynEditSearch1: TSynEditSearch;
    btnProc: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    qryTriggers: TOraQuery;
    qryTriggersTRIGGER_NAME: TStringField;
    qryTriggersTRIGGER_TYPE: TStringField;
    qryTriggersSTATUS: TStringField;
    pnlTriggers: TPanel;
    Panel5: TPanel;
    lsTriggers: TListBox;
    Splitter5: TSplitter;
    qryTriggersText: TOraQuery;
    mmTriggers: TSynEdit;
    Splitter4: TSplitter;
    pnlTabelas: TPanel;
    lsTabelas: TListBox;
    wwDBGrid1: TwwDBGrid;
    Splitter1: TSplitter;
    Panel6: TPanel;
    BitBtn1: TSpeedButton;
    Panel7: TPanel;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Panel1: TPanel;
    Panel8: TPanel;
    Mensagem1: TMensagem;
    qryProceduresNAME: TStringField;
    popProcedures: TPopupMenu;
    CarregarnoEditor1: TMenuItem;
    sdImport: TSaveDialog;
    qryProcTextTEXT: TStringField;
    qryRecordCount: TOraQuery;
    qryFK_ComandosFOREIGN_KEY: TStringField;
    qryFK_ComandosCOMANDO: TStringField;
    qrySessionTADDR: TStringField;
    qryTriggersTextTEXT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure qryTablesAfterScroll(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure lsTabelasClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbCarregarClick(Sender: TObject);
    procedure edtUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbTabelasChange(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure lsTabelaRelacClick(Sender: TObject);
    procedure ckRelacaoClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbCarregarConfClick(Sender: TObject);
    procedure btnSalvarConfClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lsProceduresClick(Sender: TObject);
    procedure mmProcedureKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reSQL_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reSQL_Enter(Sender: TObject);
    procedure mmProcedureEnter(Sender: TObject);
    procedure btnProcClick(Sender: TObject);
    procedure Procurar1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure lsTriggersClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CarregarnoEditor1Click(Sender: TObject);
    procedure qryDadosSQLNewRecord(DataSet: TDataSet);
    procedure lsProceduresDblClick(Sender: TObject);
  private
    { Private declarations }
    function Selecionar: String;
    procedure AtualizaDados;
    procedure tbGetMemoLinCol(Memo: TSynEdit; var Lin, Col: Cardinal);
    function ArrayItem(cString, cSeparador: string; iIndice: Integer; cResto: string = ''): string;
    function ArrayCount(cString, cSeparador: string): Integer;
    procedure InputBoxSet(var Msg: TMessage); message InputBoxMsg;
  public
    { Public declarations }
    iFK : integer;
    slOldParams,
    slOldValores,
    slAux : TStringList;
    bLogin : Boolean;
    iPos, iAlt : integer;
    sUsername, sPassword, sServer : string;
  end;

var
  frmMain: TfrmMain;

implementation

uses DescTable, Relatorio, Login, EditorProc, untLocalizar;

{$R *.dfm}

procedure TfrmMain.FormShow(Sender: TObject);
begin

  bLogin := False;
  frmLogin := TfrmLogin.Create(nil);
  frmLogin.ShowModal;
  frmLogin.Release;
  frmLogin := nil;

end;

procedure TfrmMain.DBGrid1CellClick(Column: TColumn);
begin
  AtualizaDados;
end;

procedure TfrmMain.qryTablesAfterScroll(DataSet: TDataSet);
begin
  AtualizaDados;
end;

procedure TfrmMain.AtualizaDados;
begin
  try
    with tblDados do
    begin
      Close;
      TableName := lsTabelas.Items.Strings[lsTabelas.ItemIndex];
      Open;
    end;

    mmTriggers.Clear;

    with qryTriggers do
    begin
      Close;
      ParamByName('pOwner').AsString := UpperCase(sUsername);
      ParamByName('pTable').AsString := lsTabelas.Items.Strings[lsTabelas.ItemIndex];
      Open;

      if not(IsEmpty) then
      begin
        lsTriggers.Clear;
        First;
        while not(Eof) do
        begin
          lsTriggers.Items.Add(qryTriggersTRIGGER_NAME.AsString + ' : ' +  qryTriggersSTATUS.AsString);
          Next;
        end;

        lsTriggers.ItemIndex := 0;
        lsTriggersClick(Self);

      end
      else
        lsTriggers.Clear;

    end;

  except
  end;
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sTexto, sTable, sPath, sMsg, sValorParam, sOldValor : String;
  slComandos : TStringList;
  iTentativas, iTimeOut, i{, iIni, iFim}: Integer;
  slParams, slValores : TStringList;
begin

  iTimeOut := 50;
  sOldValor := '';
  sPath := ExtractFilePath(Application.Exename);
  DeleteFile(sPath + 'temp.sql');
  DeleteFile(sPath + 'SQLRtrn.txt');

  if ((Key = VK_F9) and (PC_Abas.ActivePageIndex = 0))  then
  begin
    with qryDadosSQL do
    begin
      Close;

      sTexto := Selecionar;
      SQL.Text := sTexto;

      SQL.Text := sTexto;

      if (Pos(':', SQL.Text) > 0) and (Pos('@', SQL.Text) = 0) then
      begin

        slParams  := TStringList.Create;
        slValores := TStringList.Create;

        for i := 0 to (qryDadosSQL.Params.Count -1) do
        begin

          if (slOldParams.IndexOf(qryDadosSQL.Params[i].Name) <> -1) then
            sOldValor := slOldValores[slOldParams.IndexOf(qryDadosSQL.Params[i].Name)]
          else
            sOldValor := '';

          sValorParam := InputBox('Parâmetro', 'Informe valor para ' + UpperCase(qryDadosSQL.Params[i].Name), sOldValor);
          slParams.Add(qryDadosSQL.Params[i].Name);
          slValores.Add(sValorParam);
        end;

        for i := 0 to slParams.Count - 1 do
          SQL.Text := StringReplace(SQL.Text, ':'+slParams[i], slValores[i], []);

        slOldParams.Text := slParams.Text;
        slOldValores.Text := slValores.Text;

        slParams.Free;
        slValores.Free;

      end;

      if (Pos('SELECT', UpperCase(Trim(Copy(sTexto, 1, 12)))) > 0) then
      begin
        Open;

        mmLog.Lines.Add('[' + Trim(sTexto) + ']');
        mmLog.Lines.Add(StringOfChar('-', Length('[' + Trim(sTexto) + ']')));
        mmLog.Lines.Add(sbSQL.Panels[0].Text);
        mmLog.Lines.Add(' ');

        qryRecordCount.Close;
        qryRecordCount.SQL.Clear;
        qryRecordCount.SQL.Add('SELECT COUNT(1) CONTADOR FROM (');
        qryRecordCount.SQL.Add(qryDadosSQL.SQL.Text);
        qryRecordCount.SQL.Add(')');
        qryRecordCount.Open;

        sbSQL.Panels[0].Text := qryRecordCount.FieldByName('CONTADOR').AsString + ' Registro(s) encontrado(s)';
        qryRecordCount.Close;

      end
      else if (Pos('DESC ', UpperCase(Trim(Copy(sTexto, 1, 12)))) > 0) then
      begin

        iPos := reSQL.SelStart;

        sTable := Trim(Copy(sTexto, 6, length(sTexto)));
        frmDescTable := TfrmDescTable.Create(Self);
        frmDescTable.qryDadosSQL.Close;
        frmDescTable.qryDadosSQL.ParamByName('pTABLE').AsString := sTable;
        frmDescTable.qryDadosSQL.Open;
        if (frmDescTable.qryDadosSQL.IsEmpty) then
        begin
          MessageDlg('Tabela não encontrada!', mtInformation, [mbOK], 0);
          Abort;
        end
        else
        begin
          frmDescTable.Top := frmMain.Top;
          frmDescTable.Height := frmMain.Height;
          frmDescTable.Left := frmMain.Width - frmDescTable.Width;
          frmDescTable.Caption := 'Estrutura da Tabela ' +  UpperCase(sTable);
          frmDescTable.Show;
        end;
      end
      else if (Pos('ALTER TABLE', UpperCase(Trim(Copy(sTexto, 1, 12)))) > 0) then
      begin
        ExecSQL;
        sbSQL.Panels[0].Text := 'Tabela Alterada';

        mmLog.Lines.Add('[' + Trim(sTexto) + ']');
        mmLog.Lines.Add(StringOfChar('-', Length('[' + Trim(sTexto) + ']')));
        mmLog.Lines.Add(sbSQL.Panels[0].Text);
        mmLog.Lines.Add(' ');

      end
      else if (Pos('@', UpperCase(sTexto)) > 0) then
      begin

        //try
          PC_Abas.Enabled := False;
          pnlScript.Visible := True;

          slComandos := TStringList.Create;

          slComandos.Insert(0, 'SET HEAD OFF');
          slComandos.Insert(1, 'SET PAGES 0');
          slComandos.Insert(2, 'SET LONG 9999999');
          slComandos.Insert(3, 'SET LINESIZE 100');
          slComandos.Insert(4, 'SPOOL ' + sPath + 'SQLRtrn.txt');
          slComandos.Add(sTexto);
          slComandos.Add('SPOOL OFF');
          slComandos.Add('EXIT');
          slComandos.SaveToFile(sPath + 'temp.sql');

          WinExec(PChar('SqlPlus ' + sUsername + '/' + sPassword + '@' + sServer + ' @' + sPath + '\temp.sql'), SW_HIDE);
          Sleep(100);

          // Se conseguir renomear o arquivo, quer dizer que acabou de usá-lo
          //RenameFile(sPath + 'SQLRtrn.txt', sPath + '_SQLRtrn.txt');
          RenameFile(sPath + 'SQLRtrn.sql', sPath + '_SQLRtrn.sql');

          iTentativas := 1;
          while (not FileExists(sPath + '_SQLRtrn.txt')) and (iTentativas <> iTimeOut) do
          begin
            Sleep(500);
            Application.ProcessMessages;

            // Se conseguir renomear o arquivo, quer dizer que acabou de usá-lo
            RenameFile(sPath + 'SQLRtrn.txt', sPath + '_SQLRtrn.txt');
            Inc(iTentativas);

            if iTimeOut > 0 then
              Sleep(500);
          end;
          RenameFile(sPath + '_SQLRtrn.txt', sPath + 'SQLRtrn.txt');

          Sleep(2000);

          slComandos.Clear;
          slComandos.LoadFromFile(sPath + 'SQLRtrn.txt');

          for i := 0 to slComandos.Count - 1 do
            sMsg := sMsg + Trim(slComandos.Strings[i]) + #13#10;

  //        frmInformacoes := TfrmInformacoes.Create(Self);
  //        frmInformacoes.mmInfo.Lines.Text := sMsg;
  //        frmInformacoes.ShowModal;
  //        frmInformacoes.Release;
  //        frmInformacoes := nil;

          mmLog.Lines.Add('[' + Trim(sTexto) + ']');
          mmLog.Lines.Add(StringOfChar('-', Length('[' + Trim(sTexto) + ']')));
          mmLog.Lines.Add(sMsg);
          mmLog.Lines.Add(' ');

          slComandos.Free;

          DeleteFile(sPath + 'temp.sql');
          DeleteFile(sPath + 'SQLRtrn.txt');

          pnlScript.Visible := False;
          PC_Abas.Enabled := True;
          reSQL.SetFocus;

          PC_Abas.ActivePage := tsLog;

          SendMessage(mmLog.Handle, EM_LINESCROLL, 0,  mmLog.Lines.Count + 10000);

          sbSQL.Panels[0].Text := 'Script executado';
          
{        except

          MessageDlg('Ocorreu um erro ao executar o script.', mtError, [mbOK], 0);
          pnlScript.Visible := False;
          PC_Abas.Enabled := True;
          reSQL.SetFocus;

        end;}

      end
      else
      begin

        if ((Pos('UPDATE', UpperCase(sTexto)) > 0) and (Pos('WHERE', UpperCase(sTexto)) = 0)) then
        begin
          MessageDlg('Update sem Where!', mtInformation, [mbOK], 0);
          Abort;
        end;

        ExecSQL;

        if (Pos('INSERT', UpperCase(sTexto)) > 0) then
        begin
          sbSQL.Panels[0].Text := IntToStr(RowsAffected) + ' Registro(s) inserido(s)';
          inc(iAlt);
        end
        else if (Pos('COMMIT', UpperCase(sTexto)) > 0) then
        begin
          sbSQL.Panels[0].Text := 'Commit executado';
          iAlt := 0;
        end
        else if (Pos('ROLLBACK', UpperCase(sTexto)) > 0) then
        begin
          sbSQL.Panels[0].Text := 'Rollback executado';
          iAlt := 0;
        end
        else
        begin
          sbSQL.Panels[0].Text := IntToStr(RowsAffected) + ' Registro(s) alterado(s)';
          inc(iAlt);
        end;

        mmLog.Lines.Add('[' + Trim(sTexto) + ']');
        mmLog.Lines.Add(StringOfChar('-', Length('[' + Trim(sTexto) + ']')));
        mmLog.Lines.Add(sbSQL.Panels[0].Text);
        mmLog.Lines.Add(' ');

      end;

    end;
  end;

//  if (Key = VK_F4) then
//  begin
//
//    iIni := reSQL.SelStart - Perform(EM_LINEINDEX, Perform(EM_LINEFROMCHAR,reSQL.SelStart, 0), 0)
//    i := reSQL.SelStart;
//    iFim := reSQL.SelStart;
//    sTexto := reSQL.LineText;
//
//    while (iIni >= 0) do
//    begin
//
//      if Copy(sTexto, iIni, 1) <> ' ' then
//      begin
//        inc(i);
//        iIni := iIni - 1
//      end
//      else
//        Break;
//
//    end;
//
//    iFim := PosEx(' ', sTexto, iIni + 1);
//    sTexto := Trim(UpperCase(Copy(sTexto, iIni, iFim - iIni)));
//
//    frmDescTable := TfrmDescTable.Create(Self);
//    frmDescTable.qryDadosSQL.Close;
//    frmDescTable.qryDadosSQL.ParamByName('pTABLE').AsString := sTexto;
//    frmDescTable.qryDadosSQL.Open;
//    if (frmDescTable.qryDadosSQL.IsEmpty) then
//    begin
//      MessageDlg('Tabela não encontrada!', mtInformation, [mbOK], 0);
//      Abort;
//    end
//    else
//    begin
//      frmDescTable.Top := frmMain.Top;
//      frmDescTable.Height := frmMain.Height;
//      frmDescTable.Left := frmMain.Width - frmDescTable.Width;
//      frmDescTable.Caption := 'Estrutura da Tabela ' +  UpperCase(sTable);
//      frmDescTable.Show;
//    end;
//
//
//  end;

end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  wfdSessions.Execute;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  qrySession.Close;
  qrySession.Open;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
var
  id : String;
begin

  id := quotedStr(qrySessionSID.AsString + ',' + qrySessionSERIAL.AsString);

  with qryKill do
  begin
    SQL.Clear;
    SQL.Add('ALTER SYSTEM KILL SESSION' + id + 'IMMEDIATE');
    ExecSql;
  end;

  qrySession.Close;
  qrySession.Open;
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
begin
  wfdDados.Execute;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
var
  FileName : String;
begin
  sd.DefaultExt := 'sql';
  sd.FileName := 'comandos.sql';
  sd.Filter   := 'Arquivos SQL|*.sql';
  sd.Title    := 'Salvar SQL...';

  if sd.Execute then
  begin
    FileName := sd.FileName;
    reSQL.Lines.SaveToFile(FileName);
    sbSQL.Panels[0].Text := 'Arquivo salvo em ' + sd.FileName + '.';
  end;
end;

procedure TfrmMain.wwDBGrid1DblClick(Sender: TObject);
begin
  wwRecordViewDialog1.Execute;
end;

procedure TfrmMain.lsTabelasClick(Sender: TObject);
begin
  AtualizaDados;
end;

procedure TfrmMain.sbSalvarClick(Sender: TObject);
var
  FileName : String;
  slComandos : TStringList;
begin

  if (edtUsuario.Text = '') then
  begin
    MessageDlg('É necessário informar o usuário.', mtInformation, [mbOK], 0);
    edtUsuario.SetFocus;
    Exit;
  end;

  slComandos := TStringList.Create;

  with qryFK_Comandos do
  begin
    Close;
    ParamByName('pOWNER').AsString := edtUsuario.Text;
    Open;
    First;

    while not(eof) do
    begin
      sbFK.SimpleText := 'Gerando Foreign Key ' + qryFK_ComandosFOREIGN_KEY.AsString;
      slComandos.Add(qryFK_ComandosFOREIGN_KEY.AsString + ';' + qryFK_ComandosCOMANDO.AsString);
      Next;
    end;

    Close;
  end;

  if sd.Execute then
  begin
    FileName := sd.FileName;
    slComandos.SaveToFile(FileName);
    sbFK.SimpleText := 'Arquivo salvo em ' + sd.FileName + '.';
  end;
end;

procedure TfrmMain.sbCarregarClick(Sender: TObject);
var
  slComandos, slLog : TStringList;
  sErro : String;
  i : integer;
  SQL : String;
begin
  sErro := '';

  if (edtUsuario.Text = '') then
  begin
    MessageDlg('É necessário informar o usuário.', mtInformation, [mbOK], 0);
    edtUsuario.SetFocus;
    Exit;
  end;

  slComandos := TStringList.Create;
  slLog      := TStringList.Create;

  if od.Execute then
  begin
    slComandos.LoadFromFile(od.FileName);
    sbFK.SimpleText := 'Arquivo ' + sd.FileName + ' carregado com sucesso.';
  end
  else
    Exit;

  if (iFK >= slComandos.Count) then
  begin
    MessageDlg('Não é necessário recriar as Foreign Keys.', mtInformation, [mbOK], 0);
    sbCarregar.Enabled := False;
    sbSalvar.Enabled := False;
    Exit;
  end;

  if (MessageDlg('Tem certeza que deseja criar as Foreign Keys?', mtConfirmation, [mbYes, mbNo], 0) in [mrNo, mrNone]) then
    Exit;

  for i := 0 to slComandos.Count - 1 do
  begin

    qryDadosSQL.SQL.Clear;
    sbFK.SimpleText := 'Criando Foreign Key ' + ArrayItem(slComandos[i], ';', 1);

    SQL := 'SELECT COUNT(*) CONT  ' +
       '  FROM ALL_CONSTRAINTS A ' +
       ' WHERE A.OWNER = ''' + edtUsuario.Text + '''' +
       '   AND A.CONSTRAINT_TYPE = ''R''  ' +
       '   AND A.STATUS = ''ENABLED'' ' +
       '   AND A.CONSTRAINT_NAME = ''' + ArrayItem(slComandos[i], ';', 1) + '''';

    qryDadosSQL.SQL.Add(SQL);
    qryDadosSQL.Open;

    if qryDadosSQL.FieldByName('CONT').AsInteger = 1 then
      slLog.Add(ArrayItem(slComandos[i], ';', 1) + ' já existe e não foi recriada.' )
    else
    begin
      qryDadosSQL.Close;
      qryDadosSQL.SQL.Clear;
      qryDadosSQL.SQL.Add(ArrayItem(slComandos[i], ';', 2));
      try
        qryDadosSQL.ExecSQL;
        slLog.Add(ArrayItem(slComandos[i], ';', 1) + ' criada.');
      except
        slLog.Add('ERRO! ' + ArrayItem(slComandos[i], ';', 1) + ' não pode ser criada. Por favor, verifique.');
        sErro := 'Ocorreram erros na criação das Foreign Keys. ';
      end;
    end;

    Application.ProcessMessages;
    
  end;
  slLog.SaveToFile('c:\FK.log');
  MessageDlg(sErro + 'Foi gerado um arquivo de log em c:\FK.log.', mtInformation, [mbOK], 0);
end;

function TfrmMain.ArrayItem(cString, cSeparador: string; iIndice: Integer;
  cResto: string): string;
var
  cStringAux, cItem: string;
  aStringPicada: array of string;
  cAbre, cFecha: string[1];
  iQuantidade, iComeco, iFim, iTamanho, iCont: Integer;
begin
  cAbre := '';
  cFecha := '';
  if (Length(cSeparador) = 2) and (Pos(cSeparador, '[]{}()<>§¬') > 0) then
  begin
    cAbre := Copy(cSeparador, 1, 1);
    cFecha := Copy(cSeparador, 2, 1);
    iQuantidade := ArrayCount(cString, cSeparador);

    // Se o Item solicitado for menor que a quantidade, procura
    if iIndice <= iQuantidade then
    begin
      for iCont := 1 to iQuantidade do
      begin
        iComeco := Pos(cAbre, cString);
        iFim := Pos(cFecha, cString);
        iTamanho := iFim - iComeco;
        cItem := Copy(cString, iComeco + 1, iTamanho - 1);
        SetLength(aStringPicada, iCont);
        aStringPicada[iCont - 1] := cItem;
        Delete(cString, iComeco, iTamanho + 1);
      end;
      // Para nao acessar uma posicao -1 no array
      if iIndice - 1 = -1 then
        Result := ''
      else
        Result := aStringPicada[iIndice - 1];
    end;
    // Se o Item solicitado for maior que a quantidade, sai sem procurar
  end
  else if Length(cSeparador) = 1 then
  begin
    cStringAux := '§' + StringReplace(cString, cSeparador, '¬§', [rfReplaceAll, rfIgnoreCase]) + '¬';
    Result := ArrayItem(cStringAux, '§¬', iIndice, cResto);
    if cResto = '->' then
    begin
      if iIndice = 1 then
        Result := cString
      else if iIndice <> ArrayCount(cString, cSeparador) then
      begin
        Result := cSeparador + Result + cSeparador;
        Result := RightStr(cString, Length(cString) - Pos(Result, cString));
      end;
    end
    else if cResto = '<-' then
    begin
      if iIndice = ArrayCount(cString, cSeparador) then
        Result := cString
      else if iIndice <> 1 then
      begin
        Result := cSeparador + Result + cSeparador;
        Result := LeftStr(cString, Length(cString) - (Length(cString) - ((Pos(Result, cString) - 1) + Length(Result))) - 1);
      end;
    end;
  end
  else
    Result := '';

end;

function TfrmMain.ArrayCount(cString, cSeparador: string): Integer;
begin
  Result := Length(cString) - Length(StringReplace(cString, LeftStr(cSeparador, 1), '', [rfReplaceAll, rfIgnoreCase]));

  if (Length(cSeparador) = 1) and (cString <> '') then
    Result := Result + 1;

end;


function LimpaStr(S: string):String;
begin
  Result := S;
  Result := StringReplace(Result, '.', '', [rfReplaceAll]);
  Result := StringReplace(Result, ',', '', [rfReplaceAll]);
  Result := StringReplace(Result, '-', '', [rfReplaceAll]);
end;

function VirgulaPorPonto(S: string):String;
begin
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
  result := S ;
end;


procedure TfrmMain.edtUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (Key = VK_RETURN)  then
  begin

    //Verifica Foreign Keys Válidas no usuário
    with qryFK_Ativas do
    begin
      Close;
      ParamByName('pOWNER').AsString := edtUsuario.Text;
      Open;

      iFK := qryFK_AtivasCONT.AsInteger;
      lblFK_Info.Caption := 'Existe(m) ' + qryFK_AtivasCONT.AsString +
                            ' Foreign Keys válidas para o usuário ' +
                            edtUsuario.Text + '.';
      Close;
    end;

    sbCarregar.Enabled := True;
    sbSalvar.Enabled := FileExists('C:\seculus\Programas\OracleTool\OracleTool.dpr');

  end;

end;

function TfrmMain.Selecionar:String;
var
  Lin, Col: Cardinal;
  Final, i : integer;
  sSQL : TStringList;
begin

  sSQL := TStringList.Create;

  tbGetMemoLinCol(reSQL, Lin, Col);

  //Acha a linha em branco anterior
  while (Trim(reSQL.Lines.Strings[Lin]) <> '') do
  begin
    Lin := Lin - 1;
  end;

  Final := Lin + 1;

  while (Trim(reSQL.Lines.Strings[Final]) <> '') do
  begin
    Final := Final + 1;
  end;

  for i := Lin to Final do
  begin
    sSQL.Add(reSQL.Lines.Strings[i]);
    //    sSQL := sSQL + ' ' + reSQL.Lines.Strings[i];
  end;

  Result := Trim(sSQL.Text);

end;

procedure TfrmMain.tbGetMemoLinCol(Memo: TSynEdit; var Lin, Col: Cardinal);
begin
  with Memo do begin
    Lin := reSQL.CaretY - 1;//reSQL.Lines.IndexOf(reSQL.LineText);
    Col := SelStart - Perform(EM_LINEINDEX, Lin, 0);
  end;
end;


procedure TfrmMain.Button4Click(Sender: TObject);
var
  i : integer;
  iTamTotal : integer;
  iTamRelat : integer;

begin

  iTamTotal := 0;

  frmRelatorio := TfrmRelatorio.Create(Self);

  if (qryDadosSQL.FieldDefs.Count > 8) then
  begin
    MessageDlg('Quantidade excessiva de campos! É possível gerar o relatório com até 8 colunas.', mtInformation, [mbOK], 0);
    Exit;
  end;

  with frmRelatorio do
  begin

    for i := 0 to qryDadosSQL.FieldDefs.Count - 1 do
    begin
      iTamTotal := iTamTotal + qryDadosSQL.Fields[i].DisplayWidth;
    end;

    for i := 0 to qryDadosSQL.FieldDefs.Count - 1 do
    begin
      TQRLabel(FindComponent('QRLabel' + IntToStr(i+1))).Enabled := True;
      TQRLabel(FindComponent('QRLabel' + IntToStr(i+1))).Caption := qryDadosSQL.Fields[i].FieldName;

      TQRDBText(FindComponent('QRDBText' + IntToStr(i+1))).Enabled := True;
      TQRDBText(FindComponent('QRDBText' + IntToStr(i+1))).DataSet := qryDadosSQL;
      TQRDBText(FindComponent('QRDBText' + IntToStr(i+1))).DataField := qryDadosSQL.Fields[i].FieldName;

      if (qryDadosSQL.Fields[i].DataType <> ftString) then
      TQRDBText(FindComponent('QRDBText' + IntToStr(i+1))).Alignment := taRightJustify;


      iTamRelat := Round(qryDadosSQL.Fields[i].DisplayWidth / iTamTotal * 100);
      TQRDBText(FindComponent('QRDBText' + IntToStr(i+1))).Width := Round(690 * (iTamRelat / 100));
      TQRLabel(FindComponent('QRLabel' + IntToStr(i+1))).Width   := Round(690 * (iTamRelat / 100));

      if (i + 1 > 1) then
      begin
        TQRDBText(FindComponent('QRDBText' + IntToStr(i+1))).Left  :=
          TQRDBText(FindComponent('QRDBText' + IntToStr(i))).Left +
          TQRDBText(FindComponent('QRDBText' + IntToStr(i))).Width + 5;

        TQRLabel(FindComponent('QRLabel' + IntToStr(i+1))).Left  :=
          TQRDBText(FindComponent('QRDBText' + IntToStr(i))).Left +
          TQRDBText(FindComponent('QRDBText' + IntToStr(i))).Width + 5;
      end;

    end;

    QuickRep1.Preview;

  end;

  pnlImpressao.Visible := False;
  PC_Abas.Enabled := True;

end;

procedure TfrmMain.Button5Click(Sender: TObject);
begin
  pnlImpressao.Visible := False;
  PC_Abas.Enabled := True;
end;

procedure TfrmMain.SpeedButton4Click(Sender: TObject);
var
  slDados: TStringList;
  i, iRegistro : integer;
  sLinha, FileName : String;
begin

  slDados := TStringList.Create;

  with qryDadosSQL do
  begin

    //Cabeçalho
    for i := 0 to qryDadosSQL.FieldDefs.Count - 1 do
    begin
      sLinha := sLinha + qryDadosSQL.Fields[i].FieldName + ';';
    end;
    slDados.Add(sLinha);

    //Dados
    qryDadosSQL.DisableControls;
    qryDadosSQL.First;

    iRegistro := 1;

    while not(EOF) do
    begin

      sbSQL.Panels[0].Text := 'Gerando registro ' + IntToStr(iRegistro);

      sLinha := '';

      for i := 0 to qryDadosSQL.FieldDefs.Count - 1 do
      begin
        sLinha := sLinha + FieldByName(qryDadosSQL.Fields[i].FieldName).AsString + ';';
      end;

      slDados.Add(sLinha);
      inc(iRegistro);
      Next;

    end;

    sd.DefaultExt := 'txt';
    sd.FileName := 'Export.txt';
    sd.Filter   := 'Arquivos Texto|*.txt';
    sd.Title    := 'Salvar Arquivo Texto...';

    if sd.Execute then
    begin
      FileName := sd.FileName;
      slDados.SaveToFile(FileName);
      sbSQL.Panels[0].Text := 'Arquivo salvo em ' + sd.FileName + '.';
    end;

    qryDadosSQL.EnableControls;

  end;

  slDados.Free;

end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
var
  FileName : String;
  iNumCampos, i : Integer;
begin

  slAux := TStringList.Create;

  if odCSV.Execute then
  begin
    FileName := odCSV.FileName;
    slAux.LoadFromFile(Filename);
    edtFilename.Text := Filename;
  end;

  lsCSV.Clear;
  iNumCampos := ArrayCount(slAux.Strings[0], ';');

  for i := 1 to iNumCampos do
  begin
    lsCSV.Items.Add(ArrayItem(slAux.Strings[0], ';', i));
  end;

end;

procedure TfrmMain.cbTabelasChange(Sender: TObject);
begin

  lsCampos.Clear;

  with qryCampos do
  begin
    Close;
    ParamByName('pTable').AsString := cbTabelas.Text;
    Open;
    First;
    while not(EOF) do
    begin
//      if (Trim(qryCamposTAMANHO.AsString) <> '') then
//        lsCampos.Items.Add(FieldByName('COLUNA').AsString + '     ' + qryCamposTIPO.AsString + '(' + qryCamposTAMANHO.AsString + ') ')
//      else
//        lsCampos.Items.Add(FieldByName('COLUNA').AsString + '     ' + qryCamposTIPO.AsString);

      lsCampos.Items.Add(FieldByName('COLUNA').AsString);

      Next;
    end;
    Close;
  end;

end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
var
  i, x : integer;
  sConf : String;
begin

  i := lsCSV.ItemIndex;
  x := lsCampos.ItemIndex;

  if edtValorFixo.Text = '' then
  begin

    sConf := lsCampos.Items.Strings[x] + ';' + 'N;' +
             lsCSV.Items.Strings[i] + ';';

    if (ckLimparCampo.Checked) then
      sConf := sConf + 'S;'
    else
      sConf := sConf + 'N;';

    i := lsTabelaRelac.ItemIndex;

    if (ckRelacao.Checked) then
    begin
      sConf := sConf + lsTabelaRelac.Items.Strings[i] + ';' +
                       cbCampoRel.Text + ';' +
                       cbCampoRes.Text + ';';

    end
    else
    begin
      sConf := sConf + 'Nenhuma;Nenhum;Nenhum;';
    end;

  end
  else
  begin
    sConf := lsCampos.Items.Strings[x] + ';S;' +
             edtValorFixo.Text + ';N;' + 'Nenhuma;Nenhum;Nenhum;';
  end;

  //Adicionar Aspas
  if (chkAspas.Checked) then
    sConf := sConf + 'S;'
  else
    sConf := sConf + 'N;';

  //Adicionar Aspas no Resultado
  if (chkAspasResult.Checked) then
    sConf := sConf + 'S;'
  else
    sConf := sConf + 'N;';


  lsConf.Items.Add(sConf);

  edtValorFixo.Clear;
  cbCampoRel.Clear;
  cbCampoRes.Clear;
  ckRelacao.Checked := False;
  ckRelacaoClick(Self);

end;

procedure TfrmMain.lsTabelaRelacClick(Sender: TObject);
var
  i : integer;
begin

  cbCampoRel.Clear;
  cbCampoRes.Clear;

  i := lsTabelaRelac.ItemIndex;

  with qryCampos do
  begin
    Close;
    ParamByName('pTable').AsString := lsTabelaRelac.Items.Strings[i];
    Open;
    First;
    while not(EOF) do
    begin
      cbCampoRel.Items.Add(FieldByName('COLUNA').AsString);
      cbCampoRes.Items.Add(FieldByName('COLUNA').AsString);      
      Next;
    end;
    Close;
  end;

end;

procedure TfrmMain.ckRelacaoClick(Sender: TObject);
begin
  pRelacao.Visible := (ckRelacao.Checked);
end;

procedure TfrmMain.SpeedButton7Click(Sender: TObject);
begin
  lsConf.DeleteSelected;
end;

procedure TfrmMain.SpeedButton8Click(Sender: TObject);
var
  slArq : TStringList;
  sComando, sValor : String;
  i, x, iLinhas, iCampos, iIndice : integer;
  qryAux : TOraQuery;
begin

  slArq := TStringList.Create;
  qryAux := TOraQuery.Create(Self);
  qryAux.Session := qryTables.Session;

  iLinhas := slAux.Count - 1;
  iCampos := lsConf.Count - 1;

  for i := 1 to iLinhas do
  begin

    sComando := 'INSERT INTO ' + cbTabelas.Text + ' (';

    // Campos do Insert
    for x := 0 to iCampos do
    begin
      sComando := sComando + ArrayItem(lsConf.Items.Strings[x], ';', 1) + ',';
    end;

    //Retira a última vírgula
    sComando := copy(sComando, 0, length(sComando) - 1);

    sComando := sComando + ') VALUES (';

    //Valores do Insert
    for x := 0 to iCampos do
    begin

      //Atenção: ArrayItem começa em 1

      //Valor fixo
      if (ArrayItem(lsConf.Items.Strings[x], ';', 2) = 'S') then
      begin
        sValor := ArrayItem(lsConf.Items.Strings[x], ';', 3);
      end
      else //Não é valor fixo
      begin
        //Pega temporariamente o nome do campo
        sValor := ArrayItem(lsConf.Items.Strings[x], ';', 3);

        iIndice := lsCSV.Items.IndexOf(sValor);
        sValor  := ArrayItem(slAux.Strings[i], ';', iIndice + 1);
      end;

      //Verifica se tem que limpar o campo
      if (ArrayItem(lsConf.Items.Strings[x], ';', 4) = 'S') then
        sValor := LimpaStr(sValor);

      //Adiciona Aspas
      if (ArrayItem(lsConf.Items.Strings[x], ';', 8) = 'S') then
        sValor := QuotedStr(Trim(sValor));

      //Tabela relacionada
      if (ArrayItem(lsConf.Items.Strings[x], ';', 5) <> 'Nenhuma') then
      begin
        qryAux.SQL.Clear;
        qryAux.SQL.Text := 'SELECT ' +
                           ArrayItem(lsConf.Items.Strings[x], ';', 7)  + ' ' + //Campo Resultado
                           'FROM ' + ArrayItem(lsConf.Items.Strings[x], ';', 5) + ' ' + //Tabela
                           'WHERE ' + ArrayItem(lsConf.Items.Strings[x], ';', 6)  + ' ' + //Campo Relacionado
                           ' = ' + QuotedStr(sValor);

        qryAux.Open;

        if not(qryAux.IsEmpty) then
          sValor := qryAux.FieldByName(ArrayItem(lsConf.Items.Strings[x], ';', 7)).AsString
        else
        begin
          MessageDlg('Existe um problema nos campos relacionados. Tabela: ' +
                      ArrayItem(lsConf.Items.Strings[x], ';', 5) +
                      ', Campo: ' + ArrayItem(lsConf.Items.Strings[x], ';', 6) +
                      ', Valor: ' + sValor, mtInformation, [mbOK], 0);
          Abort;
        end;

        qryAux.Close;

        if (ArrayItem(lsConf.Items.Strings[x], ';', 9) = 'S') then
          sValor := QuotedStr(sValor);

      end;

      //Troca , por . (para campos numéricos)
      sValor := VirgulaPorPonto(sValor);

      sValor := sValor + ',';
      sComando := sComando + sValor;

    end;
    //Retira a última vírgula
    sComando := copy(sComando, 0, length(sComando) - 1);
    sComando := sComando + ');';

    //Adiciona o comando
    slArq.Add(sComando);

  end;

  if (sdImport.Execute) then
  begin
    slArq.SaveToFile(sdImport.FileName);
    MessageDlg('Comandos gerados para arquivo c:\import.sql.', mtInformation, [mbOK], 0);
  end;

  qryAux.Free;

end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
  pnlImpressao.Visible := True;
end;

procedure TfrmMain.sbCarregarConfClick(Sender: TObject);
var
  sConf : TStringList;
  i, iNumCampos : integer;
begin

  slAux := TStringList.Create;
  sConf := TStringList.Create;

  if odCIO.Execute then sConf.LoadFromFile(odCIO.FileName);

  edtFilename.Text := sConf[0];
  slAux.LoadFromFile(sConf[0]);

  lsCSV.Clear;
  iNumCampos := ArrayCount(slAux.Strings[0], ';');

  for i := 1 to iNumCampos do
  begin
    lsCSV.Items.Add(ArrayItem(slAux.Strings[0], ';', i));
  end;

  cbTabelas.ItemIndex := cbTabelas.Items.IndexOf(sConf[1]);
  cbTabelasChange(Self);

  for i := 2 to sConf.Count - 1 do
  begin
    lsConf.Items.Add(sConf[i]);
  end;

end;

procedure TfrmMain.btnSalvarConfClick(Sender: TObject);
var
  slConf : TStringList;
  i : integer;
begin

  slConf := TStringList.Create;

  slConf.Add(edtFilename.Text);
  slConf.Add(cbTabelas.Text);

  for i := 0 to lsConf.Count - 1 do
  begin

    slConf.Add(lsConf.Items[i]);

  end;

  if (sdConf.Execute) then
    slConf.SaveToFile(sdConf.FileName);

end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  sPath : String;
  qryAux : TOraQuery;
  iOpcao : integer;
begin

  if (iAlt > 0) then
  begin

    iOpcao := MessageDlg('Existem alterações não efetivadas no banco de dados. Deseja realizar um COMMIT?', mtInformation, [mbYes, mbNo, mbCancel], 0);

    if (iOpcao = mrYes) then
    begin

      qryAux := TOraQuery.Create(Self);
      qryAux.Session := qryTables.Session;
      qryAux.SQL.Text := 'COMMIT';
      qryAux.ExecSQL;
      qryAux.Free;

    end
    else if ( iOpcao = mrNo) then
    begin

      qryAux := TOraQuery.Create(Self);
      qryAux.Session := qryTables.Session;
      qryAux.SQL.Text := 'ROLLBACK';
      qryAux.ExecSQL;
      qryAux.Free;

    end
    else if ( iOpcao = mrCancel) then
      Abort;

  end;

  sPath := ExtractFilePath(Application.Exename);
  DeleteFile(sPath + 'temp.sql');
  DeleteFile(sPath + 'SQLRtrn.txt');

  slOldParams.Free;
  slOldValores.Free;

  Application.Terminate;

end;

procedure TfrmMain.lsProceduresClick(Sender: TObject);
var
  slProc : TStringList;
  i : integer;
begin

  slProc := TStringList.Create;

  with qryProcText do
  begin

    Close;
    ParamByName('pProc').AsString := lsProcedures.Items.Strings[lsProcedures.ItemIndex];
    Open;
    First;

    while not(Eof) do
    begin
      slProc.Add(TrimRight(qryProcTextTEXT.AsString));
      Next;
    end;

    Close;

  end;

  slProc.SaveToFile('proc.sql');

  for i := 0 to 9 do
    mmProcedure.ClearBookMark(i);

  mmProcedure.Clear;
  mmProcedure.Lines.LoadFromFile('proc.sql');

end;

procedure TfrmMain.mmProcedureKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with mmProcedure do
  begin
    sbProc.SimpleText := 'Linha: ' + inttostr( reSQL.CaretY) {inttostr(Perform(EM_LINEFROMCHAR,SelStart, 0)+1)} + ' Coluna: ' + inttostr( reSQL.CaretX); //inttostr(SelStart - Perform(EM_LINEINDEX, Perform(EM_LINEFROMCHAR,SelStart, 0), 0) + 1);
  end;

end;

procedure TfrmMain.reSQL_KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with reSQL do
  begin
    sbSQL.Panels[1].Text := 'Linha: ' + inttostr( reSQL.CaretY) {inttostr(Perform(EM_LINEFROMCHAR,SelStart, 0)+1)} + ' Coluna: ' + inttostr( reSQL.CaretX); //inttostr(SelStart - Perform(EM_LINEINDEX, Perform(EM_LINEFROMCHAR,SelStart, 0), 0) + 1);
  end;
  
end;

procedure TfrmMain.reSQL_Enter(Sender: TObject);
begin
  with reSQL do
  begin
    sbSQL.Panels[1].Text := 'Linha: ' + inttostr( reSQL.CaretY) {inttostr(Perform(EM_LINEFROMCHAR,SelStart, 0)+1)} + ' Coluna: ' + inttostr( reSQL.CaretX); //inttostr(SelStart - Perform(EM_LINEINDEX, Perform(EM_LINEFROMCHAR,SelStart, 0), 0) + 1);
  end;
end;

procedure TfrmMain.mmProcedureEnter(Sender: TObject);
begin
  with mmProcedure do
  begin
    sbProc.SimpleText := 'Linha: ' + inttostr( reSQL.CaretY) {inttostr(Perform(EM_LINEFROMCHAR,SelStart, 0)+1)} + ' Coluna: ' + inttostr( reSQL.CaretX); //inttostr(SelStart - Perform(EM_LINEINDEX, Perform(EM_LINEFROMCHAR,SelStart, 0), 0) + 1);
  end;
end;

procedure TfrmMain.btnProcClick(Sender: TObject);
begin

  frmEditorProc := TfrmEditorProc.Create(Self);
  frmEditorProc.Show;

end;

procedure TfrmMain.Procurar1Click(Sender: TObject);
begin
  frmLocalizar := TfrmLocalizar.Create(Self);
  frmLocalizar.sTelaPai := 'Main';
  frmLocalizar.Show;
end;

procedure TfrmMain.MenuItem1Click(Sender: TObject);
begin
  frmLocalizar := TfrmLocalizar.Create(Self);
  frmLocalizar.sTelaPai := 'Main2';
  frmLocalizar.Show;
end;

procedure TfrmMain.lsTriggersClick(Sender: TObject);
begin

  with qryTriggersText do
  begin
    Close;
    ParamByName('pTrigger').AsString := Trim(ArrayItem(lsTriggers.Items.Strings[lsTriggers.ItemIndex], ':', 1));
    Open;

    if not(IsEmpty) then
    begin
      First;
      mmTriggers.Clear;

      while not(Eof) do
      begin
        mmTriggers.Lines.Add(TrimRight(qryTriggersTextTEXT.AsString));
        Next;
      end;

    end
    else
      mmTriggers.Clear;

  end;

end;

procedure TfrmMain.SpeedButton9Click(Sender: TObject);
begin

  qryTables.Close;
  qryTables.Open;
  lsTabelas.Clear;

  with qryTables do
  begin

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

end;

procedure TfrmMain.SpeedButton10Click(Sender: TObject);
//var
//  i : integer;
begin

//  i := 0;

  with qryProcedures do
  begin

    Close;
    Open;

    lsProcedures.Clear;

    First;
    while not(Eof) do
    begin

      lsProcedures.Items.Add(qryProceduresNAME.AsString);
      Next;
      
    end;

  end;

end;

procedure TfrmMain.MenuItem2Click(Sender: TObject);
begin
  frmLocalizar := TfrmLocalizar.Create(Self);
  frmLocalizar.sTelaPai := 'Triggers';
  frmLocalizar.Show;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  bLogin := True;
end;

procedure TfrmMain.CarregarnoEditor1Click(Sender: TObject);
var
  sSenha : String;
begin

  if (lsProcedures.ItemIndex = -1) then
    Abort;

  PostMessage(Handle, InputBoxMsg, 0, 0);
  sSenha := InputBox('Autenticação', 'Informe a senha Memphis:', '');
  if (sSenha <> '152635@cl1ente') then
    Abort;

  frmEditorProc := TfrmEditorProc.Create(Self);
  frmEditorProc.mmProcedure.Lines := mmProcedure.Lines;
  frmEditorProc.mmProcedure.Lines.Strings[0] := 'CREATE OR REPLACE ' + frmEditorProc.mmProcedure.Lines.Strings[0];
  frmEditorProc.mmProcedure.Lines.Add('/');
  frmEditorProc.mmProcedure.Lines.Add('');
  frmEditorProc.Show;

end;

procedure TfrmMain.InputBoxSet(var Msg: TMessage);
var
  i: integer;
begin
  for i:=0 to Screen.Forms[0].ComponentCount-1 do
  begin
    if Screen.Forms[0].Components[i] is TEdit then
    begin
      With TEdit( Screen.Forms[0].Components[i] ) do
      begin
        PasswordChar := '*'; //Aqui está o caractere q irá aparecer na inputbox
        Clear;               //Limpamos a caixa de digitação da senha. 
      end;
    end;
  end;
end;

procedure TfrmMain.qryDadosSQLNewRecord(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmMain.lsProceduresDblClick(Sender: TObject);
begin

  frmEditorProc := TfrmEditorProc.Create(Self);

  frmEditorProc.mmProcedure.Text := mmProcedure.Text;
  frmEditorProc.mmProcedure.Lines.Strings[0] := 'CREATE OR REPLACE ' + frmEditorProc.mmProcedure.Lines.Strings[0];
  //frmEditorProc.mmProcedure.Lines.Add('/');
  //frmEditorProc.mmProcedure.Lines.Add(' ');

  frmEditorProc.Show;

end;

end.
