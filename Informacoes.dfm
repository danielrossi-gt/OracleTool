object frmInformacoes: TfrmInformacoes
  Left = 275
  Top = 186
  BorderStyle = bsDialog
  Caption = 'Informa'#231#227'o'
  ClientHeight = 504
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmInfo: TMemo
    Left = 0
    Top = 0
    Width = 817
    Height = 464
    Align = alTop
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 736
    Top = 472
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
