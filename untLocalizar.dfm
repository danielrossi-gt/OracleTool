object frmLocalizar: TfrmLocalizar
  Left = 274
  Top = 213
  BorderStyle = bsDialog
  Caption = 'Localizar'
  ClientHeight = 39
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtLocalizar: TEdit
    Left = 8
    Top = 9
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 248
    Top = 7
    Width = 75
    Height = 25
    Caption = 'Procurar'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
end
