object frmEditorProc: TfrmEditorProc
  Left = 319
  Top = 194
  Width = 849
  Height = 563
  Caption = 'Editor de Procedures'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sbProc: TStatusBar
    Left = 0
    Top = 510
    Width = 841
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Carregar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
        0555555555777777755555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 422
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Buscar'
      Flat = True
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object edtLocalizar: TEdit
      Left = 160
      Top = 5
      Width = 257
      Height = 21
      TabOrder = 0
    end
  end
  object mmProcedure: TSynEdit
    Left = 0
    Top = 33
    Width = 841
    Height = 477
    Align = alClient
    ActiveLineColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnKeyDown = mmProcedureKeyDown
    Gutter.Font.Charset = DEFAULT_CHARSET
    Gutter.Font.Color = clWindowText
    Gutter.Font.Height = -11
    Gutter.Font.Name = 'Courier New'
    Gutter.Font.Style = []
    Gutter.ShowLineNumbers = True
    Highlighter = SynSQLSyn1
  end
  object od: TOpenDialog
    DefaultExt = 'SQL'
    Filter = 'Arquivos SQL|*.sql'
    Title = 'Abrir SQL...'
    Left = 56
    Top = 48
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 120
    Top = 48
  end
  object sd: TSaveDialog
    DefaultExt = 'SQL'
    FileName = 'comandos.sql'
    Filter = 'Arquivos SQL|*.sql'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar SQL...'
    Left = 56
    Top = 80
  end
  object SynEditSearch1: TSynEditSearch
    Left = 88
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 80
    object Procurar1: TMenuItem
      Caption = 'Procurar'
      ShortCut = 16454
      OnClick = Procurar1Click
    end
  end
  object SynSQLSyn1: TSynSQLSyn
    CommentAttri.Foreground = clGreen
    DataTypeAttri.Foreground = clRed
    DelimitedIdentifierAttri.Foreground = clBlue
    FunctionAttri.Foreground = clBlue
    FunctionAttri.Style = []
    IdentifierAttri.Foreground = clBlue
    KeyAttri.Foreground = clBlue
    KeyAttri.Style = []
    NumberAttri.Foreground = clMaroon
    PLSQLAttri.Foreground = clBlue
    PLSQLAttri.Style = []
    StringAttri.Foreground = clRed
    SymbolAttri.Foreground = clBlue
    TableNameAttri.Foreground = clOlive
    SQLDialect = sqlOracle
    Left = 88
    Top = 48
  end
end
