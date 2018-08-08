object frmDescTable: TfrmDescTable
  Left = 428
  Top = 160
  Width = 442
  Height = 640
  Caption = 'Estrutura da Tabela'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgEstrut: TwwDBGrid
    Left = 0
    Top = 0
    Width = 434
    Height = 613
    Selected.Strings = (
      'COLUNA'#9'30'#9'Coluna'
      'TIPO'#9'20'#9'Tipo'#9'F'
      'TAMANHO'#9'10'#9'Tamanho'
      'NULO'#9'1'#9'Nulo')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsDadosSQL
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = dbgEstrutDblClick
  end
  object Edit1: TEdit
    Left = 48
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object Memo1: TMemo
    Left = 48
    Top = 256
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object dsDadosSQL: TwwDataSource
    DataSet = qryDadosSQL
    Left = 168
    Top = 520
  end
  object qryDadosSQL: TOraQuery
    Session = frmMain.dtaOracle
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
    Left = 136
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTABLE'
      end>
    object qryDadosSQLCOLUNA: TStringField
      DisplayLabel = 'Coluna'
      DisplayWidth = 30
      FieldName = 'COLUNA'
      Size = 30
    end
    object qryDadosSQLTIPO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 20
      FieldName = 'TIPO'
      Size = 106
    end
    object qryDadosSQLTAMANHO: TFloatField
      DisplayLabel = 'Tamanho'
      DisplayWidth = 10
      FieldName = 'TAMANHO'
    end
    object qryDadosSQLNULO: TStringField
      DisplayLabel = 'Nulo'
      DisplayWidth = 1
      FieldName = 'NULO'
      Size = 1
    end
  end
end
