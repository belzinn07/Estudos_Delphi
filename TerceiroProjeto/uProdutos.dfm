object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 577
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 232
    Top = 136
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 232
    Top = 181
    Width = 33
    Height = 15
    Caption = 'Pre'#231'o:'
  end
  object editNome: TEdit
    Left = 232
    Top = 152
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object editPreco: TEdit
    Left = 232
    Top = 200
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 232
    Top = 103
    Width = 118
    Height = 19
    Caption = 'Cadastro de Produtos'
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 248
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 449
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\DEV\Delphi\Estudos_Delphi\TerceiroProjeto\meubanco'
      'DriverID=SQLite')
    Left = 48
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 72
    Top = 336
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 368
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 504
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 152
    Top = 376
  end
end
