unit untLocalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmLocalizar = class(TForm)
    edtLocalizar: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    sBuscaAnterior : String;
    iIndiceBusca : integer;
  public
    { Public declarations }
    sTelaPai : String;
  end;

var
  frmLocalizar: TfrmLocalizar;

implementation

{$R *.dfm}

uses
  Main, EditorProc;

procedure TfrmLocalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLocalizar.Button1Click(Sender: TObject);
begin

  if (sTelaPai = 'Main') then
  begin

    if (sBuscaAnterior <> edtLocalizar.Text) then
    begin

      with frmMain do
      begin

        SynEditSearch1.Options := [];
        SynEditSearch1.Pattern := edtLocalizar.Text;
        SynEditSearch1.FindAll(reSQL.Lines.Text);

        if (SynEditSearch1.ResultCount > 0) then
        begin
          reSQL.SelStart  := SynEditSearch1.Results[SynEditSearch1.Next]-1;
          reSQL.SelLength := Length(edtLocalizar.Text);
        end
        else
        begin
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

      sBuscaAnterior := edtLocalizar.Text;
      iIndiceBusca   := 0;

    end
    else
    begin

      with frmMain do
      begin
        if (iIndiceBusca < SynEditSearch1.ResultCount -1) then
        begin
          inc(iIndiceBusca);
          reSQL.SelStart  := SynEditSearch1.Results[iIndiceBusca]-1;
          reSQL.SelLength := Length(edtLocalizar.Text);
        end
        else
        begin
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

    end;
    
  end
  else if (sTelaPai = 'Procedures') then
  begin

    if (sBuscaAnterior <> edtLocalizar.Text) then
    begin

      with frmEditorProc do
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
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

      sBuscaAnterior := edtLocalizar.Text;
      iIndiceBusca   := 0;

    end
    else
    begin

      with frmEditorProc do
      begin
        if (iIndiceBusca < SynEditSearch1.ResultCount -1) then
        begin
          inc(iIndiceBusca);
          mmProcedure.SelStart  := SynEditSearch1.Results[iIndiceBusca]-1;
          mmProcedure.SelLength := Length(edtLocalizar.Text);
        end
        else
        begin
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

    end;

  end
  else if (sTelaPai = 'Triggers') then
  begin

    if (sBuscaAnterior <> edtLocalizar.Text) then
    begin

      with frmMain do
      begin

        SynEditSearch1.Options := [];
        SynEditSearch1.Pattern := edtLocalizar.Text;
        SynEditSearch1.FindAll(mmTriggers.Lines.Text);

        if (SynEditSearch1.ResultCount > 0) then
        begin
          mmTriggers.SelStart  := SynEditSearch1.Results[SynEditSearch1.Next]-1;
          mmTriggers.SelLength := Length(edtLocalizar.Text);
        end
        else
        begin
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

      sBuscaAnterior := edtLocalizar.Text;
      iIndiceBusca   := 0;

    end
    else
    begin

      with frmMain do
      begin
        if (iIndiceBusca < SynEditSearch1.ResultCount -1) then
        begin
          inc(iIndiceBusca);
          mmTriggers.SelStart  := SynEditSearch1.Results[iIndiceBusca]-1;
          mmTriggers.SelLength := Length(edtLocalizar.Text);
        end
        else
        begin
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

    end;

  end
  else
  begin

    if (sBuscaAnterior <> edtLocalizar.Text) then
    begin

      with frmMain do
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
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

      sBuscaAnterior := edtLocalizar.Text;
      iIndiceBusca   := 0;

    end
    else
    begin

      with frmMain do
      begin
        if (iIndiceBusca < SynEditSearch1.ResultCount -1) then
        begin
          inc(iIndiceBusca);
          mmProcedure.SelStart  := SynEditSearch1.Results[iIndiceBusca]-1;
          mmProcedure.SelLength := Length(edtLocalizar.Text);
        end
        else
        begin
          ShowMessage('"'+edtLocalizar.Text+'" não foi localizado!');
          edtLocalizar.SetFocus;
        end;

      end;

    end;

  end;

end;

procedure TfrmLocalizar.FormShow(Sender: TObject);
begin
  sBuscaAnterior := '';
end;

procedure TfrmLocalizar.FormDeactivate(Sender: TObject);
begin
  sBuscaAnterior := '';
  iIndiceBusca := 0;
end;

procedure TfrmLocalizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then
    Close;
end;

end.
