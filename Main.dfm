object frmMain: TfrmMain
  Left = 279
  Top = 34
  Width = 903
  Height = 838
  Caption = 'OracleTool - Vers'#227'o 5.0'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PC_Abas: TPageControl
    Left = 0
    Top = 0
    Width = 895
    Height = 804
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'SQL'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 0
        Top = 313
        Width = 887
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object dbgDadosSQL: TwwDBGrid
        Left = 0
        Top = 316
        Width = 887
        Height = 441
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsDadosSQL
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object sbSQL: TStatusBar
        Left = 0
        Top = 757
        Width = 887
        Height = 19
        Panels = <
          item
            Width = 500
          end
          item
            Width = 50
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 887
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          887
          33)
        object SpeedButton1: TSpeedButton
          Left = 0
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
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 75
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
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 150
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00000000BFBFBF
            BF00BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00BFBFBFBFBFBF
            BF00BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00BFBFBF0000000000000000BFBFBF
            BF00BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00BFBFBFBFBFBF
            BF00BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00BFBFBF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000BFFFFF
            FF00BFBFBFBFFFFFFF00BFBFBFBFFFFFFF00BFBFBFBFFFFFFF00BFBFBFBFFFFF
            FF00BFBFBFBFFFFFFF00BFBFBFBFFFFFFF00BFBFBF0000000000000000BFBFBF
            BF00FFFFFFBFBFBFBF00FFFFFFBFBFBFBF00FFFFFFBFBFBFBF00FFFFFFBFBFBF
            BF00FFFFFFBFBFBFBF00FFFFFF000000FF00FFFFFF0000000000000000BFFFFF
            FF00BFBFBFBFFFFFFF00BFBFBFBFFFFFFF00BFBFBFBFFFFFFF00BFBFBFBFFFFF
            FF00BFBFBFBFFFFFFF00BFBFBFBFFFFFFF00BFBFBF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
            FF00FFFFFFBFFFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000000000000000000000BFFFFF
            FF00000000BFFFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00FFFFFFBFFFFF
            FF00FFFFFFBFFFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000000000BFFFFFFF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00000000BFFFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000BFBFBFBFFFFFFF00000000BFFFFF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFFBFFFFFFF00FFFFFFBFFFFFFF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 225
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Arq.Texto'
          Flat = True
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
            000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
            00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
            8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
            8888880BB088888888888800008888888888}
          OnClick = SpeedButton4Click
        end
        object btnProc: TSpeedButton
          Left = 792
          Top = 3
          Width = 92
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Procedures'
          Flat = True
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DD00
            000000000000DD000000D080FFFFFFFFFF080D000000D080F0000000FF080D00
            0000D080FFFFFFFFFF080D000000D080F00000000F080D000000D080FFFFFFFF
            FF080D000000D080F0000000FF080D000000D080FFFFFFFFFF080D000000D080
            F00000000F080D000000D080FFFFFFFFFF080D000000D0800000000000080D00
            0000D0888888888888880D000000DD00000000000000DD000000DDDDDDDDDDDD
            DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
          Visible = False
          OnClick = btnProcClick
        end
      end
      object pnlScript: TPanel
        Left = 368
        Top = 360
        Width = 185
        Height = 57
        Caption = 'Executando Script. Aguarde.'
        TabOrder = 4
        Visible = False
      end
      object reSQL: TSynEdit
        Left = 0
        Top = 33
        Width = 887
        Height = 280
        Align = alTop
        ActiveLineColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        PopupMenu = PopupMenu1
        TabOrder = 5
        OnClick = reSQL_Enter
        OnEnter = reSQL_Enter
        OnKeyDown = reSQL_KeyDown
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Highlighter = SynSQLSyn1
        SearchEngine = SynEditSearch1
      end
      object pnlImpressao: TPanel
        Left = 150
        Top = 28
        Width = 272
        Height = 93
        TabOrder = 3
        Visible = False
        object Label5: TLabel
          Left = 16
          Top = 8
          Width = 88
          Height = 13
          Caption = 'T'#237'tulo do Relat'#243'rio'
        end
        object edtTitulo: TEdit
          Left = 16
          Top = 24
          Width = 241
          Height = 21
          TabOrder = 0
        end
        object Button4: TButton
          Left = 181
          Top = 58
          Width = 75
          Height = 25
          Caption = 'OK'
          TabOrder = 1
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 101
          Top = 58
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = Button5Click
        end
      end
    end
    object tsLog: TTabSheet
      Caption = 'Log SQL'
      ImageIndex = 5
      object mmLog: TMemo
        Left = 0
        Top = 0
        Width = 887
        Height = 776
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tabelas'
      object Splitter4: TSplitter
        Left = 0
        Top = 465
        Width = 887
        Height = 5
        Cursor = crVSplit
        Align = alBottom
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 757
        Width = 887
        Height = 19
        Panels = <>
      end
      object pnlTriggers: TPanel
        Left = 0
        Top = 470
        Width = 887
        Height = 287
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Splitter5: TSplitter
          Left = 321
          Top = 25
          Width = 5
          Height = 262
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 887
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Triggers'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object lsTriggers: TListBox
          Left = 0
          Top = 25
          Width = 321
          Height = 262
          Align = alLeft
          ItemHeight = 13
          TabOrder = 1
          OnClick = lsTriggersClick
        end
        object mmTriggers: TSynEdit
          Left = 326
          Top = 25
          Width = 561
          Height = 262
          Align = alClient
          ActiveLineColor = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          PopupMenu = PopupMenu3
          TabOrder = 2
          OnEnter = mmProcedureEnter
          OnKeyDown = mmProcedureKeyDown
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -11
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.ShowLineNumbers = True
          Highlighter = SynSQLSyn1
          ReadOnly = True
          SearchEngine = SynEditSearch1
        end
      end
      object pnlTabelas: TPanel
        Left = 0
        Top = 0
        Width = 887
        Height = 465
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Splitter1: TSplitter
          Left = 193
          Top = 58
          Width = 5
          Height = 407
        end
        object lsTabelas: TListBox
          Left = 0
          Top = 58
          Width = 193
          Height = 407
          Align = alLeft
          ItemHeight = 13
          TabOrder = 0
          OnClick = lsTabelasClick
        end
        object wwDBGrid1: TwwDBGrid
          Left = 198
          Top = 58
          Width = 689
          Height = 407
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsDados
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ReadOnly = True
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = wwDBGrid1DblClick
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 887
          Height = 58
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object BitBtn1: TSpeedButton
            Left = 0
            Top = 3
            Width = 75
            Height = 25
            Caption = 'Filtro'
            Flat = True
            Glyph.Data = {
              F6030000424DF603000000000000360000002800000013000000100000000100
              180000000000C003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FF000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF000000FFFFFF848684000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
              0000FFFFFF848684000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFF
              FF848684000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
              0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF848684
              000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF000000C6C7C6FFFFFFC6C7C684868400
              0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
              FF00FFFF00FFFF00FF000000C6C7C6FFFFFFC6C7C6FFFFFFC6C7C68486840000
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF
              00FF000000C6C7C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6848684000000
              FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000C6C7
              C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6848684000000FF
              00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF000000C6C7C6FFFFFFC6C7C6
              FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6848684000000FF00
              FFFF00FFFF00FF000000FF00FFFF00FF00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FFFF00FF
              FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
              0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
            OnClick = BitBtn1Click
          end
          object SpeedButton9: TSpeedButton
            Left = 75
            Top = 3
            Width = 75
            Height = 25
            Caption = 'Atualizar'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              3333333777333777FF33339993707399933333773337F3777FF3399933000339
              9933377333777F3377F3399333707333993337733337333337FF993333333333
              399377F33333F333377F993333303333399377F33337FF333373993333707333
              333377F333777F333333993333101333333377F333777F3FFFFF993333000399
              999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
              99933773FF777F3F777F339993707399999333773F373F77777F333999999999
              3393333777333777337333333999993333333333377777333333}
            NumGlyphs = 2
            OnClick = SpeedButton9Click
          end
          object Panel7: TPanel
            Left = 0
            Top = 33
            Width = 887
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Tabelas'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object tsProcedures: TTabSheet
      Caption = 'Procedures'
      ImageIndex = 6
      object Splitter3: TSplitter
        Left = 193
        Top = 56
        Width = 5
        Height = 701
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 887
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton10: TSpeedButton
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Atualizar'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF33339993707399933333773337F3777FF3399933000339
            9933377333777F3377F3399333707333993337733337333337FF993333333333
            399377F33333F333377F993333303333399377F33337FF333373993333707333
            333377F333777F333333993333101333333377F333777F3FFFFF993333000399
            999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
            99933773FF777F3F777F339993707399999333773F373F77777F333999999999
            3393333777333777337333333999993333333333377777333333}
          NumGlyphs = 2
          OnClick = SpeedButton10Click
        end
        object Panel1: TPanel
          Left = 0
          Top = 31
          Width = 887
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Procedures'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object lsProcedures: TListBox
        Left = 0
        Top = 56
        Width = 193
        Height = 701
        Style = lbOwnerDrawFixed
        Align = alLeft
        ItemHeight = 13
        PopupMenu = popProcedures
        TabOrder = 1
        OnClick = lsProceduresClick
        OnDblClick = lsProceduresDblClick
      end
      object sbProc: TStatusBar
        Left = 0
        Top = 757
        Width = 887
        Height = 19
        Panels = <>
        SimplePanel = True
      end
      object mmProcedure: TSynEdit
        Left = 198
        Top = 56
        Width = 689
        Height = 701
        Align = alClient
        ActiveLineColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        PopupMenu = PopupMenu2
        TabOrder = 3
        OnEnter = mmProcedureEnter
        OnKeyDown = mmProcedureKeyDown
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.ShowLineNumbers = True
        Highlighter = SynSQLSyn1
        ReadOnly = True
        SearchEngine = SynEditSearch1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sess'#245'es'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 887
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Button1: TSpeedButton
          Left = 0
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Filtro'
          Flat = True
          Glyph.Data = {
            F6030000424DF603000000000000360000002800000013000000100000000100
            180000000000C003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FFFFFF848684000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            0000FFFFFF848684000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFF
            FF848684000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF848684
            000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF000000C6C7C6FFFFFFC6C7C684868400
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF
            FF00FFFF00FFFF00FF000000C6C7C6FFFFFFC6C7C6FFFFFFC6C7C68486840000
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF
            00FF000000C6C7C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6848684000000
            FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000C6C7
            C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6848684000000FF
            00FFFF00FFFF00FFFF00FF000000FF00FFFF00FF000000C6C7C6FFFFFFC6C7C6
            FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6FFFFFFC6C7C6848684000000FF00
            FFFF00FFFF00FF000000FF00FFFF00FF00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FFFF00FF
            FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000}
          OnClick = Button1Click
        end
        object Button2: TSpeedButton
          Left = 150
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Matar'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333000003333333333F777773FF333333008877700
            33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
            703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
            77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
            07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
            780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
            8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
            3333333773FFFF77333333333000003333333333377777333333}
          NumGlyphs = 2
          OnClick = Button2Click
        end
        object Button3: TSpeedButton
          Left = 75
          Top = 3
          Width = 75
          Height = 25
          Caption = 'Atualizar'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF33339993707399933333773337F3777FF3399933000339
            9933377333777F3377F3399333707333993337733337333337FF993333333333
            399377F33333F333377F993333303333399377F33337FF333373993333707333
            333377F333777F333333993333101333333377F333777F3FFFFF993333000399
            999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
            99933773FF777F3F777F339993707399999333773F373F77777F333999999999
            3393333777333777337333333999993333333333377777333333}
          NumGlyphs = 2
          OnClick = Button3Click
        end
        object Panel8: TPanel
          Left = 0
          Top = 31
          Width = 887
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Sess'#245'es'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 56
        Width = 887
        Height = 708
        Selected.Strings = (
          'SCHEMANAME'#9'30'#9'SCHEMANAME'#9#9
          'USERNAME'#9'30'#9'USERNAME'#9#9
          'OSUSER'#9'30'#9'OSUSER'#9#9
          'PROGRAM'#9'48'#9'PROGRAM'#9#9
          'TERMINAL'#9'16'#9'TERMINAL'#9#9
          'TADDR'#9'16'#9'TADDR'#9'F'
          'STATUS'#9'8'#9'STATUS'#9#9
          'MACHINE'#9'64'#9'MACHINE'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsSession
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object StatusBar2: TStatusBar
        Left = 0
        Top = 764
        Width = 887
        Height = 19
        Panels = <>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Utilit'#225'rios'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 433
        Height = 305
        Caption = ' Foreign Keys '
        TabOrder = 0
        object lblFK_Info: TLabel
          Left = 16
          Top = 64
          Width = 321
          Height = 13
          Caption = 'Digite o nome do usu'#225'rio e tecle ENTER para continuar.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbSalvar: TSpeedButton
          Left = 16
          Top = 216
          Width = 75
          Height = 70
          Caption = 'Salvar'
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
          Layout = blGlyphTop
          NumGlyphs = 2
          OnClick = sbSalvarClick
        end
        object sbCarregar: TSpeedButton
          Left = 16
          Top = 120
          Width = 75
          Height = 70
          Caption = 'Carregar'
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
          Layout = blGlyphTop
          NumGlyphs = 2
          OnClick = sbCarregarClick
        end
        object Label1: TLabel
          Left = 104
          Top = 240
          Width = 300
          Height = 13
          Caption = 'Exporta as Foreign Keys do usu'#225'rio atual para um arquivo texto.'
        end
        object Label2: TLabel
          Left = 104
          Top = 140
          Width = 291
          Height = 13
          Caption = 'Cria Foreign Keys no usu'#225'rio atual a partir de um arquivo texto'
        end
        object Label3: TLabel
          Left = 104
          Top = 156
          Width = 117
          Height = 13
          Caption = 'gerado pelo Oracle Tool.'
        end
        object Label4: TLabel
          Left = 16
          Top = 36
          Width = 39
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object edtUsuario: TEdit
          Left = 64
          Top = 32
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyDown = edtUsuarioKeyDown
        end
      end
      object sbFK: TStatusBar
        Left = 0
        Top = 764
        Width = 887
        Height = 19
        Panels = <>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Importa'#231#227'o de Dados'
      ImageIndex = 4
      object GroupBox2: TPanel
        Left = 0
        Top = 0
        Width = 887
        Height = 776
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        ParentBackground = True
        ParentColor = True
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 595
          Top = 22
          Width = 75
          Height = 25
          Hint = 'Carregar arquivo CSV'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object Label6: TLabel
          Left = 16
          Top = 8
          Width = 96
          Height = 13
          Caption = 'Arquivo Fonte (CSV)'
          Transparent = False
        end
        object Label7: TLabel
          Left = 16
          Top = 56
          Width = 87
          Height = 13
          Caption = 'Tabela de Destino'
          Transparent = False
        end
        object Label8: TLabel
          Left = 16
          Top = 312
          Width = 101
          Height = 13
          Caption = 'Campos Arquivo CSV'
        end
        object Label9: TLabel
          Left = 16
          Top = 104
          Width = 128
          Height = 13
          Caption = 'Campos Tabela de Destino'
        end
        object Label10: TLabel
          Left = 16
          Top = 528
          Width = 106
          Height = 13
          Caption = 'Campos Relacionados'
        end
        object Label14: TLabel
          Left = 299
          Top = 104
          Width = 46
          Height = 13
          Caption = 'Valor Fixo'
        end
        object edtFilename: TEdit
          Left = 16
          Top = 24
          Width = 569
          Height = 21
          Color = clBtnFace
          TabOrder = 0
        end
        object cbTabelas: TComboBox
          Left = 16
          Top = 72
          Width = 569
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = cbTabelasChange
        end
        object lsCSV: TListBox
          Left = 16
          Top = 328
          Width = 169
          Height = 185
          ItemHeight = 13
          TabOrder = 2
        end
        object lsCampos: TListBox
          Left = 16
          Top = 120
          Width = 265
          Height = 185
          ItemHeight = 13
          TabOrder = 3
        end
        object lsConf: TListBox
          Left = 16
          Top = 544
          Width = 569
          Height = 169
          ItemHeight = 13
          TabOrder = 4
        end
        object ckLimparCampo: TCheckBox
          Left = 192
          Top = 352
          Width = 169
          Height = 17
          Caption = 'Limpar caracteres do Campo?'
          TabOrder = 5
        end
        object ckRelacao: TCheckBox
          Left = 192
          Top = 440
          Width = 185
          Height = 17
          Hint = 
            'Permite criar rela'#231#227'o para trazer valores gravados no banco (Exe' +
            'mplo: Informar o c'#243'digo e retorna a chave de um produto)'
          Caption = 'Criar Rela'#231#227'o com Tabela no BD'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = ckRelacaoClick
        end
        object pRelacao: TPanel
          Left = 376
          Top = 295
          Width = 361
          Height = 234
          BevelOuter = bvNone
          TabOrder = 7
          Visible = False
          object Label11: TLabel
            Left = 8
            Top = 16
            Width = 96
            Height = 13
            Caption = 'Tabela Relacionada'
          end
          object Label12: TLabel
            Left = 179
            Top = 16
            Width = 96
            Height = 13
            Caption = 'Campo Relacionado'
          end
          object Label13: TLabel
            Left = 179
            Top = 63
            Width = 84
            Height = 13
            Caption = 'Campo Resultado'
          end
          object lsTabelaRelac: TListBox
            Left = 0
            Top = 32
            Width = 169
            Height = 185
            ItemHeight = 13
            TabOrder = 0
            OnClick = lsTabelaRelacClick
          end
          object cbCampoRel: TComboBox
            Left = 179
            Top = 33
            Width = 169
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbCampoRel'
          end
          object cbCampoRes: TComboBox
            Left = 179
            Top = 79
            Width = 169
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'ComboBox1'
          end
          object chkAspasResult: TCheckBox
            Left = 179
            Top = 105
            Width = 169
            Height = 17
            Caption = 'Adicionar Aspas no Resultado?'
            TabOrder = 3
          end
        end
        object edtValorFixo: TEdit
          Left = 296
          Top = 120
          Width = 289
          Height = 21
          TabOrder = 8
        end
        object chkAspas: TCheckBox
          Left = 192
          Top = 328
          Width = 169
          Height = 17
          Caption = 'Adicionar Aspas?'
          TabOrder = 9
        end
        object GroupBox3: TGroupBox
          Left = 720
          Top = 539
          Width = 121
          Height = 94
          Caption = ' Salvar Configura'#231#227'o '
          TabOrder = 10
          object sbCarregarConf: TSpeedButton
            Left = 18
            Top = 24
            Width = 86
            Height = 25
            Hint = 'Abrir uma configura'#231#227'o pr'#233'via salva'
            Caption = 'Abrir'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = sbCarregarConfClick
          end
          object btnSalvarConf: TSpeedButton
            Left = 18
            Top = 56
            Width = 86
            Height = 25
            Hint = 'Salva toda a configura'#231#227'o atual para arquivo'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = btnSalvarConfClick
          end
        end
        object GroupBox4: TGroupBox
          Left = 592
          Top = 539
          Width = 121
          Height = 126
          Caption = ' Campos '
          TabOrder = 11
          object SpeedButton6: TSpeedButton
            Left = 18
            Top = 21
            Width = 86
            Height = 25
            Hint = 'Adicionar configura'#231#227'o a lista'
            Caption = 'Adicionar'
            Flat = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007777777774F77777700000007777
              7777444F77777000000077777774444F777770000000700000444F44F7777000
              000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
              74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
              8777F07777774000000070FFFF00007777777000000070F88707077777777000
              000070FFFF007777777770000000700000077777777770000000777777777777
              777770000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton6Click
          end
          object SpeedButton7: TSpeedButton
            Left = 18
            Top = 53
            Width = 86
            Height = 25
            Hint = 'Exclui configura'#231#227'o da lista'
            Caption = 'Excluir'
            Flat = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777770000000777777777777777770000000777777777777770F700000007777
              0F777777777770000000777000F7777770F770000000777000F777770F777000
              00007777000F77700F777000000077777000F700F7777000000077777700000F
              7777700000007777777000F777777000000077777700000F7777700000007777
              7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
              00007700F7777777700F70000000777777777777777770000000777777777777
              777770000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton7Click
          end
          object SpeedButton8: TSpeedButton
            Left = 18
            Top = 85
            Width = 86
            Height = 25
            Hint = 'Gerar arquivo com Inserts'
            Caption = 'Gerar'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton8Click
          end
        end
        object Memo1: TMemo
          Left = 211
          Top = 458
          Width = 156
          Height = 57
          BorderStyle = bsNone
          Color = clBtnFace
          Lines.Strings = (
            'Permite criar rela'#231#227'o para trazer '
            'valores gravados no banco '
            '(Exemplo: Informar o c'#243'digo e '
            'retorna a chave de um produto).')
          TabOrder = 12
        end
      end
    end
  end
  object dtaOracle: TOraSession
    Options.DateFormat = 'DD-MM-YYYY'
    Options.Direct = True
    Username = 'GESTAO'
    Server = '192.170.10.3'
    AutoCommit = False
    LoginPrompt = False
    Left = 680
    Top = 96
    EncryptedPassword = '8CFF9EFF97FF'
  end
  object wwInfoTraduz: TwwIntl
    Navigator.ConfirmDeleteMessage = 'Confirma Exclus'#227'o ?'
    Navigator.Hints.FirstHint = 'Ir para o Primeiro'
    Navigator.Hints.PriorHint = 'Anterior'
    Navigator.Hints.NextHint = 'Pr'#243'ximo'
    Navigator.Hints.LastHint = 'Ir para o Ultimo'
    Navigator.Hints.InsertHint = 'Incluir'
    Navigator.Hints.DeleteHint = 'Excluir'
    Navigator.Hints.EditHint = 'Alterar'
    Navigator.Hints.PostHint = 'Gravar'
    Navigator.Hints.CancelHint = 'Cancelar'
    Navigator.Hints.RefreshHint = 'Atualizar'
    Navigator.Hints.PriorPageHint = 'Move backward %d records'
    Navigator.Hints.NextPageHint = 'Move forward %d records'
    Navigator.Hints.SaveBookmarkHint = 'Bookmark current record'
    Navigator.Hints.RestoreBookmarkHint = 'Go back to saved bookmark'
    Navigator.Hints.RecordViewDialogHint = 'Vis'#227'o do corrente registro'
    Navigator.Hints.LocateDialogHint = 'Localizar'
    Navigator.Hints.FilterDialogHint = 'Filtrar'
    Navigator.Hints.SearchDialogHint = 'Pesquisar'
    SearchDialog.SearchCharLabel = '&Pesquisar'
    SearchDialog.SearchCharShortLabel = 'Pesquisa &dados incremental'
    SearchDialog.SearchByLabel = '&Procurar Por'
    SearchDialog.StatusRecLabel = 'Registro Numero'
    SearchDialog.StatusOfLabel = 'de'
    SearchDialog.SearchCharHint = 'Digite para pesquisa Incremental'
    SearchDialog.SearchByHint = 'Pesquisa Incremental e ordem de sele'#231#227'o'
    LocateDialog.FieldValueLabel = 'Field &Value'
    LocateDialog.SearchTypeLabel = '&Search Type'
    LocateDialog.CaseSensitiveLabel = '&Case-sensitive'
    LocateDialog.MatchExactLabel = '&Exact Match'
    LocateDialog.MatchStartLabel = '&Partial Match at Beginning'
    LocateDialog.MatchAnyLabel = 'Partial Match &Anywhere'
    LocateDialog.FieldsLabel = '&Fields'
    LocateDialog.BtnFirst = 'Fi&rst'
    LocateDialog.BtnNext = '&Next'
    LocateDialog.BtnCancel = 'Cancel'
    LocateDialog.BtnClose = 'Close'
    LocateDialog.FieldValueHint = 'Enter field'#39's search value'
    LocateDialog.CaseSensitiveHint = 'Searching is case-sensitive'
    LocateDialog.MatchExactHint = 'Match occurs only if there is an exact match'
    LocateDialog.MatchStartHint = 'Match occurs if the start of the field'#39's value matches'
    LocateDialog.MatchAnyHint = 'Match occurs if any part of the field matches'
    LocateDialog.BtnFirstHint = 'Find first match'
    LocateDialog.BtnNextHint = 'Find next match from current record'
    LocateDialog.FieldNameHint = 'Select the field to search on'
    MonthCalendar.PopupYearLabel = 'Alterar Ano'
    MonthCalendar.EnterYearPrompt = 'Digite Ano Valido'
    FilterDialog.BtnViewSummary = 'Resumo de vis'#227'o'
    FilterDialog.BtnViewSummaryHint = 'Resumo de vis'#227'o do corrente criterio de procura'
    FilterDialog.BtnNewSearch = '&Nova Procura'
    FilterDialog.BtnNewSearchHint = 'Iniciar nova procura'
    FilterDialog.FieldOrderLabel = 'Ordem do Campo'
    FilterDialog.FieldOrderHint = 
      'Selecionar campo de uma lista alfab'#233'tica ou na ordem natural in ' +
      'their natural l'#243'gica'
    FilterDialog.AlphabeticLabel = 'Alfa&betica'
    FilterDialog.LogicalLabel = '&Logico'
    FilterDialog.AllFieldsLabel = '&Todos'
    FilterDialog.SearchedFieldsLabel = '&Procurado'
    FilterDialog.StartingRangeLabel = 'Limite F&inal'
    FilterDialog.EndingRangeLabel = 'Limite &Final'
    FilterDialog.StartingRangeHint = 'Digite o Limite Final do Campo'
    FilterDialog.EndingRangeHint = 'Digite o limite Final do campo'
    FilterDialog.BtnClearMin = 'L&impar'
    FilterDialog.BtnClearMax = 'Lim&par'
    FilterDialog.BtnClearFilterValue = '&Limpar'
    FilterDialog.BtnClearMinHint = 'Limpar o limite Inicial do campo'
    FilterDialog.BtnClearMaxHint = 'Limpar o limite Final do campo'
    FilterDialog.BtnClearFilterValueHint = 'Limpar o conteudo corrente dos campos que procurou'
    FilterDialog.ByValueLabel = 'por &Valor'
    FilterDialog.ByRangeLabel = 'Por &Limite'
    FilterDialog.FieldValueLabel = '&Valor do Campo'
    FilterDialog.FieldValueHint = 'Digite o valor do campo a Pesquisar'
    FilterDialog.SearchTypeLabel = 'Tipo de Pesquisa'
    FilterDialog.SearchTypeHint = 'Especifique como o campo devera ser comparado'
    FilterDialog.MatchExactLabel = '&Partida Exata'
    FilterDialog.MatchStartLabel = '&Partida Exata Come'#231'ando'
    FilterDialog.MatchAnyLabel = 'Partida parcial Em qualquer lugar'
    FilterDialog.CaseSensitiveLabel = 'Case Sensi&tive'
    FilterDialog.CaseSensitiveHint = 'Procurar em case-sensitive'
    FilterDialog.NonMatchingLabel = 'Registros N&'#227'o-Emparelhando'
    FilterDialog.NonMatchingHint = 'Registros que n'#227'o apresentam os crit'#233'rios de valor do campo'
    FilterDialog.SummaryFieldLabel = 'Campo'
    FilterDialog.SummarySearchLabel = 'Tipo de Pesquisa'
    FilterDialog.SummaryValueLabel = 'Valor'
    FilterDialog.FieldsLabel = '&Campos'
    FilterDialog.ValueRangeTabHint = 'Pesquisar campos por Valor ou por Limite'
    FilterDialog.AllSearchedTabHint = 'Mostrar todos os campos ou s'#243' atualmente os campos que procurou'
    FilterDialog.ViewSummaryNotText = 'NAO'
    RichEdit.FontNameComboHint = 'Font | Changes the font of the selection'
    RichEdit.FontSizeComboHint = 'Font Size | Changes the font size of the selection'
    RichEdit.NewButtonHint = 'New | Creates a new document'
    RichEdit.LoadButtonHint = 'Load | Load from file'
    RichEdit.SaveAsButtonHint = 'Save As | Save to file'
    RichEdit.PrintButtonHint = 'Print | Prints the active document'
    RichEdit.FindButtonHint = 'Find | Finds the specified text'
    RichEdit.CutButtonHint = 'Cut | Cuts the selection and puts it on the Clipboard'
    RichEdit.CopyButtonHint = 'Copy | Copies the selection and puts it on the Clipboard'
    RichEdit.UndoButtonHint = 'Undo | Reverses the last action'
    RichEdit.RedoButtonHint = 'Redo | Reverses the last undo action'
    RichEdit.PasteButtonHint = 'Paste | Inserts Clipboard contents'
    RichEdit.BoldButtonHint = 'Bold | Makes the selection bold (toggle)'
    RichEdit.ColorButtonHint = 'Color | Formats the selection with a color'
    RichEdit.UnderlineButtonHint = 
      'Underline | Formats the selection with a continuous underline (t' +
      'oggle)'
    RichEdit.ItalicButtonHint = 'Italic | Makes the selection italic (toggle)'
    RichEdit.LeftButtonHint = 'Align Left | Left-justifies paragraph (toggle)'
    RichEdit.CenterButtonHint = 'Center | Center-justifies paragraph (toggle)'
    RichEdit.RightButtonHint = 'Align Right | Right-justifies paragraph (toggle)'
    RichEdit.JustifyButtonHint = 'Justify | Full Justification for paragraph (toggle)'
    RichEdit.BulletButtonHint = 'Bullets | Inserts a bullet on this line (toggle)'
    RichEdit.HighlightButtonHint = 'Highlight Text | Makes the selection highlighted'
    RichEdit.SaveExitHint = 'Save And Exit | Saves changes and exits editor'
    RichEdit.PageSetupHint = 'Page Setup | Changes page layout settings'
    RichEdit.ExitHint = 'Exit'
    RichEdit.ClearHint = 'Erases the Selection'
    RichEdit.SelectAllHint = 'Selects all of the text'
    RichEdit.FindNextHint = 'Repeats the last find'
    RichEdit.ReplaceHint = 'Replaces specific text with different text'
    RichEdit.InsertObjectHint = 'Inserts new embedded object'
    RichEdit.SpellCheckHint = 'Check spelling'
    RichEdit.ToolbarHint = 'Shows or hides the toolbar'
    RichEdit.FormatBarHint = 'Shows or hides the format bar'
    RichEdit.ViewStatusBarHint = 'Shows or hides the status bar'
    RichEdit.OptionsHint = 'Sets options'
    RichEdit.FontHint = 'Selects font for current selection'
    RichEdit.ParagraphHint = 'Formats current or selected paragraph(s)'
    RichEdit.TabsHint = 'Sets tabs'
    RichEdit.CAPLockCaption = 'CAP'
    RichEdit.NUMLockCaption = 'NUM'
    RichEdit.MenuLabels.FileCaption = '&File'
    RichEdit.MenuLabels.LoadCaption = '&Load'
    RichEdit.MenuLabels.SaveAsCaption = 'Save &As'
    RichEdit.MenuLabels.SaveExitCaption = '&Save and Exit'
    RichEdit.MenuLabels.PrintCaption = '&Print'
    RichEdit.MenuLabels.PageSetupCaption = 'Page Set&up'
    RichEdit.MenuLabels.ExitCaption = 'E&xit'
    RichEdit.MenuLabels.EditCaption = '&Edit'
    RichEdit.MenuLabels.UndoCaption = '&Undo'
    RichEdit.MenuLabels.CutCaption = 'Cu&t'
    RichEdit.MenuLabels.CopyCaption = '&Copy'
    RichEdit.MenuLabels.PasteCaption = '&Paste'
    RichEdit.MenuLabels.ClearCaption = 'Cle&ar'
    RichEdit.MenuLabels.SelectallCaption = 'Select A&ll'
    RichEdit.MenuLabels.FindCaption = '&Find'
    RichEdit.MenuLabels.FindNextCaption = 'Find &Next'
    RichEdit.MenuLabels.ReplaceCaption = 'R&eplace'
    RichEdit.MenuLabels.InsertObjectCaption = '&Object...'
    RichEdit.MenuLabels.ToolCaption = '&Tools'
    RichEdit.MenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.MenuLabels.InsertCaption = '&Insert'
    RichEdit.MenuLabels.RulerCaption = '&Ruler'
    RichEdit.MenuLabels.ViewCaption = '&View'
    RichEdit.MenuLabels.ToolbarCaption = '&Toolbar'
    RichEdit.MenuLabels.FormatBarCaption = '&Format Bar'
    RichEdit.MenuLabels.ViewStatusBarCaption = '&Status Bar'
    RichEdit.MenuLabels.OptionsCaption = '&Options'
    RichEdit.MenuLabels.FormatCaption = 'F&ormat'
    RichEdit.MenuLabels.FontCaption = '&Font'
    RichEdit.MenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.MenuLabels.ParagraphCaption = '&Paragraph'
    RichEdit.MenuLabels.TabsCaption = '&Tabs'
    RichEdit.MenuLabels.HelpCaption = 'Help'
    RichEdit.PopupMenuLabels.EditCaption = '&Edit'
    RichEdit.PopupMenuLabels.ViewCaption = '&View'
    RichEdit.PopupMenuLabels.CutCaption = 'Cu&t'
    RichEdit.PopupMenuLabels.CopyCaption = '&Copy'
    RichEdit.PopupMenuLabels.PasteCaption = '&Paste'
    RichEdit.PopupMenuLabels.FontCaption = '&Font'
    RichEdit.PopupMenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.PopupMenuLabels.BoldCaption = 'B&old'
    RichEdit.PopupMenuLabels.ItalicCaption = '&Italic'
    RichEdit.PopupMenuLabels.UnderlineCaption = '&Underline'
    RichEdit.PopupMenuLabels.ParagraphCaption = 'P&aragraph'
    RichEdit.PopupMenuLabels.TabsCaption = '&Tabs'
    RichEdit.PopupMenuLabels.FindCaption = 'Fin&d'
    RichEdit.PopupMenuLabels.ReplaceCaption = '&Replace'
    RichEdit.PopupMenuLabels.InsertObjectCaption = '&Insert &Object...'
    RichEdit.PopupMenuLabels.ObjectPropertiesCaption = 'Object P&roperties'
    RichEdit.PopupMenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.ParagraphDialog.ParagraphDlgCaption = 'Paragraph'
    RichEdit.ParagraphDialog.IndentationGroupBoxCaption = 'Indentation'
    RichEdit.ParagraphDialog.LeftEditHint = 'Left Indentation'
    RichEdit.ParagraphDialog.RightEditHint = 'Right Indentation'
    RichEdit.ParagraphDialog.FirstLineEditHint = 'First Line of Paragraph Indentation'
    RichEdit.ParagraphDialog.AlignmentHint = 'Changes Alignment of Paragraph'
    RichEdit.ParagraphDialog.LeftEditCaption = 'Left:'
    RichEdit.ParagraphDialog.RightEditCaption = 'Right:'
    RichEdit.ParagraphDialog.FirstLineEditCaption = 'First line:'
    RichEdit.ParagraphDialog.SpacingGroupCaption = 'Spacing'
    RichEdit.ParagraphDialog.BeforeParagraphCaption = '&Before'
    RichEdit.ParagraphDialog.AfterParagraphCaption = 'Aft&er'
    RichEdit.ParagraphDialog.WithinParagraphCaption = 'Li&ne Spacing'
    RichEdit.ParagraphDialog.WithinParagraphAtCaption = '&At'
    RichEdit.ParagraphDialog.AlignmentCaption = 'Alignment'
    RichEdit.ParagraphDialog.AlignLeft = 'Left'
    RichEdit.ParagraphDialog.AlignRight = 'Right'
    RichEdit.ParagraphDialog.AlignCenter = 'Center'
    RichEdit.ParagraphDialog.AlignJustify = 'Justify'
    RichEdit.TabDialog.TabDlgCaption = 'Tab'
    RichEdit.TabDialog.TabGroupBoxCaption = '&Tab Stop Position'
    RichEdit.TabDialog.SetTabButtonCaption = 'Set'
    RichEdit.TabDialog.ClearTabButtonCaption = 'Clear'
    RichEdit.TabDialog.ClearAllButtonCaption = 'Clear All'
    RichEdit.TabDialog.TabPositionEditHint = 'Tab Position Edit Box'
    RichEdit.TabDialog.ListBoxHint = 'List of tabs and their positions'
    RichEdit.TabDialog.SetButtonHint = 'Set a new tab position'
    RichEdit.TabDialog.ClearButtonHint = 'Clear the selected tab position'
    RichEdit.TabDialog.ClearAllButtonHint = 'Clear all the tabs'
    UserMessages.wwDBGridDiscardChanges = 'Cancelar altera'#231#227'o ?'
    UserMessages.PictureValidateError = 'Invalid characters. Field : '
    UserMessages.LocateNoMatches = 'No matches found'
    UserMessages.LocateNoMoreMatches = 'No more matches found'
    UserMessages.MemoChangesWarning = 'Changes have been made!  Are you sure you wish to cancel?'
    UserMessages.RichEditExitWarning = 'Changes have been made!  Do you wish to save your changes?'
    UserMessages.RichEditClearWarning = 'Clear entire text?'
    UserMessages.RichEditSpellCheckComplete = 'The spell check is complete.'
    UserMessages.RichEditMSWordNotFound = 'Unable to start Microsoft Word'#39's Spell Checker.'
    UserMessages.FilterDlgNoCriteria = 'You have not selected any search criteria'
    UserMessages.RecordViewExitWarning = 'Changes have been made!  Do you wish to save your changes?'
    OKCancelBitmapped = True
    BtnOKCaption = '&OK'
    BtnCancelCaption = '&Cancelar'
    CheckBoxInGridStyle = cbStyleAuto
    VersionInfoPower = '4000.0.4'
    FilterMemoSize = 65536
    DialogFontStyle = []
    Connected = True
    Left = 776
    Top = 128
  end
  object qryTables: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT * '
      '  FROM USER_TABLES'
      'ORDER BY TABLE_NAME')
    AfterScroll = qryTablesAfterScroll
    Left = 712
    Top = 176
    object qryTablesTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Origin = 'BASE_ORACLE.USER_TABLES.TABLE_NAME'
      Size = 30
    end
  end
  object dsTables: TwwDataSource
    DataSet = qryTables
    Left = 712
    Top = 208
  end
  object dsDados: TwwDataSource
    DataSet = tblDados
    Left = 680
    Top = 208
  end
  object qryDadosSQL: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT * '
      '  FROM USER_TABLES')
    OnNewRecord = qryDadosSQLNewRecord
    Left = 776
    Top = 176
  end
  object dsDadosSQL: TwwDataSource
    DataSet = qryDadosSQL
    Left = 776
    Top = 208
  end
  object qrySession: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT SID,'
      '       SERIAL#,'
      '       SCHEMANAME,'
      '       USERNAME,'
      '       TERMINAL,'
      '       SERVER,'
      '       STATUS,'
      '       OSUSER,'
      '       MACHINE,'
      '       SUBSTR(TADDR, 1, 8) TADDR,'
      '       SUBSTR(PROCESS, 1, 12) PROCESS,'
      '       SUBSTR(PROGRAM, 1, 48) PROGRAM'
      '  FROM v$SESSION'
      ' WHERE PROGRAM NOT LIKE '#39'ORACLE.EXE%'#39
      '   AND PROGRAM <> '#39'SessionKill.exe'#39
      '   AND PROGRAM <> '#39'OracleTool.exe'#39
      ' ORDER BY  8, 11'
      ''
      ''
      '')
    Left = 808
    Top = 176
    object qrySessionSCHEMANAME: TStringField
      DisplayWidth = 30
      FieldName = 'SCHEMANAME'
      Size = 30
    end
    object qrySessionUSERNAME: TStringField
      DisplayWidth = 30
      FieldName = 'USERNAME'
      Size = 30
    end
    object qrySessionOSUSER: TStringField
      DisplayWidth = 30
      FieldName = 'OSUSER'
      Size = 30
    end
    object qrySessionPROGRAM: TStringField
      DisplayWidth = 48
      FieldName = 'PROGRAM'
      Size = 48
    end
    object qrySessionTERMINAL: TStringField
      DisplayWidth = 16
      FieldName = 'TERMINAL'
      Size = 16
    end
    object qrySessionTADDR: TStringField
      DisplayWidth = 16
      FieldName = 'TADDR'
      Size = 8
    end
    object qrySessionSTATUS: TStringField
      DisplayWidth = 8
      FieldName = 'STATUS'
      Size = 8
    end
    object qrySessionMACHINE: TStringField
      DisplayWidth = 64
      FieldName = 'MACHINE'
      Size = 64
    end
    object qrySessionSID: TFloatField
      DisplayWidth = 10
      FieldName = 'SID'
      Visible = False
    end
    object qrySessionSERIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SERIAL#'
      Visible = False
    end
    object qrySessionPROCESS: TStringField
      DisplayWidth = 12
      FieldName = 'PROCESS'
      Visible = False
      Size = 12
    end
    object qrySessionSERVER: TStringField
      DisplayWidth = 9
      FieldName = 'SERVER'
      Visible = False
      Size = 9
    end
  end
  object dsSession: TwwDataSource
    DataSet = qrySession
    Left = 808
    Top = 208
  end
  object qryKill: TOraQuery
    Session = dtaOracle
    Left = 776
    Top = 256
  end
  object wfdSessions: TwwFilterDialog
    DataSource = dsSession
    SortBy = fdSortByFieldNo
    Caption = 'Filtrar Sess'#227'o'
    FilterMethod = fdByFilter
    DefaultMatchType = fdMatchStart
    DefaultFilterBy = fdSmartFilter
    FieldOperators.OrChar = 'or'
    FieldOperators.AndChar = 'and'
    FieldOperators.NullChar = 'null'
    Rounding.Epsilon = 0.000100000000000000
    Rounding.RoundingMethod = fdrmFixed
    FilterPropertyOptions.LikeWildcardChar = '%'
    FilterOptimization = fdNone
    QueryFormatDateMode = qfdMonthDayYear
    SQLTables = <>
    Left = 744
    Top = 128
  end
  object wfdDados: TwwFilterDialog
    DataSource = dsDados
    SortBy = fdSortByFieldNo
    Caption = 'Filtrar Sess'#227'o'
    FilterMethod = fdByFilter
    DefaultMatchType = fdMatchStart
    DefaultFilterBy = fdSmartFilter
    FieldOperators.OrChar = 'or'
    FieldOperators.AndChar = 'and'
    FieldOperators.NullChar = 'null'
    Rounding.Epsilon = 0.000100000000000000
    Rounding.RoundingMethod = fdrmFixed
    FilterPropertyOptions.LikeWildcardChar = '%'
    FilterOptimization = fdNone
    QueryFormatDateMode = qfdMonthDayYear
    SQLTables = <>
    Left = 712
    Top = 128
  end
  object sd: TSaveDialog
    DefaultExt = 'SQL'
    FileName = 'comandos.sql'
    Filter = 'Arquivos SQL|*.sql'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar SQL...'
    Left = 680
    Top = 128
  end
  object od: TOpenDialog
    DefaultExt = 'SQL'
    Filter = 'Arquivos SQL|*.sql'
    Title = 'Abrir SQL...'
    Left = 712
    Top = 96
  end
  object wwRecordViewDialog1: TwwRecordViewDialog
    DataSource = dsDados
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Registro'
    NavigatorFlat = True
    Left = 808
    Top = 128
  end
  object qryFK_Ativas: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT COUNT(*) CONT '
      '  FROM ALL_CONSTRAINTS A'
      ' WHERE A.OWNER = :pOWNER '
      '   AND A.CONSTRAINT_TYPE = '#39'R'#39' '
      '   AND A.STATUS = '#39'ENABLED'#39)
    Left = 744
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pOWNER'
      end>
    object qryFK_AtivasCONT: TFloatField
      FieldName = 'CONT'
    end
  end
  object qryFK_Comandos: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT FOREIGN_KEY,'
      '       '#39'ALTER TABLE '#39' || TABELA_FILHA || '
      '       '#39' ADD CONSTRAINT '#39' || FOREIGN_KEY ||'
      '       '#39' FOREIGN KEY ('#39' || CAMPO_FILHO || '#39') '#39' ||'
      
        '       '#39' REFERENCES '#39' || TABELA_PAI || '#39'('#39' || CAMPO_PAI || '#39');'#39' ' +
        'COMANDO'
      '  FROM (      '
      '        SELECT A.CONSTRAINT_NAME FOREIGN_KEY,  '
      '               A.TABLE_NAME TABELA_FILHA, '
      '               C.COLUMN_NAME CAMPO_FILHO, '
      '               C2.TABLE_NAME TABELA_PAI, '
      '               C2.COLUMN_NAME CAMPO_PAI '
      '          FROM ALL_CONSTRAINTS A, '
      '               SYS.USER_CONS_COLUMNS C, '
      '               SYS.USER_CONS_COLUMNS C2'
      '         WHERE A.OWNER = :pOWNER '
      '           AND A.CONSTRAINT_TYPE = '#39'R'#39' '
      '           AND A.STATUS = '#39'ENABLED'#39
      '           AND A.CONSTRAINT_NAME = C.CONSTRAINT_NAME'
      '           AND A.R_CONSTRAINT_NAME = C2.CONSTRAINT_NAME'
      '         ORDER BY A.CONSTRAINT_NAME '
      '       ) ')
    Left = 712
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pOWNER'
      end>
    object qryFK_ComandosFOREIGN_KEY: TStringField
      FieldName = 'FOREIGN_KEY'
      Size = 128
    end
    object qryFK_ComandosCOMANDO: TStringField
      FieldName = 'COMANDO'
      Size = 4000
    end
  end
  object qryUsuarios: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT USERNAME '
      '  FROM ALL_USERS '
      ' ORDER BY USERNAME')
    Left = 680
    Top = 256
    object qryUsuariosUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'BASE_ORACLE.ALL_USERS.USERNAME'
      Size = 30
    end
  end
  object odCSV: TOpenDialog
    DefaultExt = 'CSV'
    Filter = 'Arquivos CSV|*.csv'
    Title = 'Abrir SQL...'
    Left = 776
    Top = 96
  end
  object qryCampos: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT COLUNAS.COLUMN_NAME AS COLUNA,'
      '       COLUNAS.DATA_TYPE AS TIPO,'
      
        '       DECODE(COLUNAS.DATA_PRECISION, NULL, COLUNAS.CHAR_COL_DEC' +
        'L_LENGTH, COLUNAS.DATA_PRECISION)  AS TAMANHO,'
      '       COLUNAS.NULLABLE AS NULO'
      '  FROM USER_TABLES TABELAS,'
      '       USER_TAB_COLUMNS COLUNAS'
      ' WHERE TABELAS.TABLE_NAME = COLUNAS.TABLE_NAME'
      '   AND TABELAS.TABLE_NAME = UPPER(:pTABLE)'
      ' ORDER BY COLUNAS.COLUMN_ID')
    Left = 744
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTABLE'
      end>
    object qryCamposCOLUNA: TStringField
      FieldName = 'COLUNA'
      Size = 30
    end
    object qryCamposTIPO: TStringField
      FieldName = 'TIPO'
      Size = 106
    end
    object qryCamposTAMANHO: TFloatField
      FieldName = 'TAMANHO'
    end
    object qryCamposNULO: TStringField
      FieldName = 'NULO'
      Size = 1
    end
  end
  object dsCampos: TwwDataSource
    DataSet = qryCampos
    Left = 744
    Top = 208
  end
  object odCIO: TOpenDialog
    DefaultExt = 'CIO'
    Filter = 'Arquivos CIO|*.cio'
    Title = 'Abrir SQL...'
    Left = 744
    Top = 96
  end
  object sdConf: TSaveDialog
    DefaultExt = 'SQL'
    FileName = 'comandos.cio'
    Filter = 'Arquivos CIO|*.cio'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar CIO...'
    Left = 808
    Top = 96
  end
  object tblDados: TOraTable
    Session = dtaOracle
    Left = 680
    Top = 176
  end
  object qryProcedures: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      ' SELECT DISTINCT USER_SOURCE.NAME--,'
      
        '        --(SELECT STATUS FROM USER_OBJECTS WHERE USER_OBJECTS.OB' +
        'JECT_NAME = USER_SOURCE.NAME AND OBJECT_TYPE = USER_SOURCE.TYPE)' +
        ' STATUS'
      '   FROM USER_SOURCE '
      '   WHERE (UPPER(USER_SOURCE.TYPE) = '#39'PROCEDURE'#39')'
      '      OR (UPPER(USER_SOURCE.TYPE) = '#39'FUNCTION'#39')'
      '   ORDER BY NAME')
    Left = 728
    Top = 384
    object qryProceduresNAME: TStringField
      FieldName = 'NAME'
      Size = 30
    end
  end
  object qryProcText: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT LINE, RTRIM(TEXT)  TEXT'
      'FROM   USER_SOURCE '
      
        'WHERE ((UPPER(TYPE) = '#39'PROCEDURE'#39') OR (UPPER(USER_SOURCE.TYPE) =' +
        ' '#39'FUNCTION'#39'))'
      ' AND  (UPPER(NAME) = UPPER(:pProc))'
      'ORDER BY LINE')
    Left = 760
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pProc'
        Value = Null
      end>
    object qryProcTextLINE: TFloatField
      FieldName = 'LINE'
      Origin = 'GESTAO_BASE.USER_SOURCE.LINE'
    end
    object qryProcTextTEXT: TStringField
      FieldName = 'TEXT'
      Size = 4000
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
    Left = 728
    Top = 416
  end
  object SynEditSearch1: TSynEditSearch
    Left = 760
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 728
    Top = 456
    object Procurar1: TMenuItem
      Caption = 'Procurar'
      ShortCut = 16454
      OnClick = Procurar1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 728
    Top = 488
    object MenuItem1: TMenuItem
      Caption = 'Procurar'
      ShortCut = 16454
      OnClick = MenuItem1Click
    end
  end
  object qryTriggers: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      ' SELECT'#9'TRIGGER_NAME,'
      '        TRIGGER_TYPE,'
      #9'DECODE(STATUS, '#39'ENABLED'#39', '#39'ATIVO'#39', '#39'INATIVO'#39') STATUS'
      '   FROM'#9'DBA_TRIGGERS'
      '  WHERE'#9'OWNER = :pOwner'
      '    AND'#9'TABLE_NAME = :pTable'
      '  ORDER BY STATUS, TRIGGER_NAME')
    Left = 792
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pOwner'
      end
      item
        DataType = ftUnknown
        Name = 'pTable'
      end>
    object qryTriggersTRIGGER_NAME: TStringField
      FieldName = 'TRIGGER_NAME'
      Size = 30
    end
    object qryTriggersTRIGGER_TYPE: TStringField
      FieldName = 'TRIGGER_TYPE'
      Size = 16
    end
    object qryTriggersSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 7
    end
  end
  object qryTriggersText: TOraQuery
    Session = dtaOracle
    SQL.Strings = (
      'SELECT TEXT '
      '   FROM USER_SOURCE '
      '   WHERE (UPPER(TYPE) = '#39'TRIGGER'#39')'
      '     AND NAME = :pTrigger'
      '   ORDER BY LINE')
    Left = 824
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTrigger'
      end>
    object qryTriggersTextTEXT: TStringField
      FieldName = 'TEXT'
      Size = 4000
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 760
    Top = 456
    object MenuItem2: TMenuItem
      Caption = 'Procurar'
      ShortCut = 16454
      OnClick = MenuItem2Click
    end
  end
  object Mensagem1: TMensagem
    Left = 396
    Top = 200
  end
  object popProcedures: TPopupMenu
    Left = 760
    Top = 488
    object CarregarnoEditor1: TMenuItem
      Caption = 'Carregar no Editor'
      OnClick = CarregarnoEditor1Click
    end
  end
  object sdImport: TSaveDialog
    DefaultExt = 'SQL'
    FileName = 'import.sql'
    Filter = 'Arquivos SQL|*.sql'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Salvar SQL...'
    Left = 840
    Top = 96
  end
  object qryRecordCount: TOraQuery
    Session = dtaOracle
    Left = 808
    Top = 256
  end
end
