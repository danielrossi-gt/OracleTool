program OracleTool;

uses
  ExceptionLog,
  Forms,
  Main in 'Main.pas' {frmMain},
  DescTable in 'DescTable.pas' {frmDescTable},
  Relatorio in 'Relatorio.pas' {frmRelatorio},
  Login in 'Login.pas' {frmLogin},
  EditorProc in 'EditorProc.pas' {frmEditorProc},
  untLocalizar in 'untLocalizar.pas' {frmLocalizar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
