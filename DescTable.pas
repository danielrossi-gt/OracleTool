unit DescTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc, DBTables, Wwquery,
  StdCtrls, MemDS, DBAccess, Ora;

type
  TfrmDescTable = class(TForm)
    dsDadosSQL: TwwDataSource;
    dbgEstrut: TwwDBGrid;
    Edit1: TEdit;
    Memo1: TMemo;
    qryDadosSQL: TOraQuery;
    qryDadosSQLCOLUNA: TStringField;
    qryDadosSQLTIPO: TStringField;
    qryDadosSQLTAMANHO: TFloatField;
    qryDadosSQLNULO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgEstrutDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    iInc : integer;
  public
    { Public declarations }
  end;

var
  frmDescTable: TfrmDescTable;

implementation

{$R *.dfm}

uses
  Main, ClipBrd, SynEdit;

procedure TfrmDescTable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDescTable.dbgEstrutDblClick(Sender: TObject);
var
  CurPoint: TPoint;
  cText: string;
  cLine: string;
begin

  cLine := qryDadosSQLCOLUNA.AsString;

  if (iInc > 0) then
    cLine :=  ', ' + cLine;

//  CurPoint := frmMain.reSQL.CaretPos;

  cText := frmMain.reSQL.LineText;
  cText := Copy(cText,0,CurPoint.x)+cLine+Copy(cText,CurPoint.x+1,Length(cText));
  frmMain.reSQL.Lines[CurPoint.y]:=cText;
  inc(iInc);



//  frmMain.reSQL.SelText := qryDadosSQLCOLUNA.AsString;

// Memo1.Clear;
//  if Clipboard.HasFormat(cf_text) then
//  begin
//    Memo1.PasteFromClipboard;
//  end;
//
//
//  edit1.Text := qryDadosSQLCOLUNA.AsString;
//
//  if (iInc > 0) then
//    edit1.Text :=  ', ' + edit1.Text;
//
//  edit1.SelectAll;
//  edit1.CopyToClipboard;
//  frmMain.SetFocus;
//  frmMain.reSQL.PasteFromClipboard;
//  frmDescTable.SetFocus;
//
//  inc(iInc);
//
//  if (Memo1.Text <> '') then
//    Memo1.CopyToClipboard;

end;

procedure TfrmDescTable.FormShow(Sender: TObject);
begin
  iInc := 0;
end;

end.
