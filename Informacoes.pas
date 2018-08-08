unit Informacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmInformacoes = class(TForm)
    mmInfo: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformacoes: TfrmInformacoes;

implementation

{$R *.dfm}

procedure TfrmInformacoes.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
