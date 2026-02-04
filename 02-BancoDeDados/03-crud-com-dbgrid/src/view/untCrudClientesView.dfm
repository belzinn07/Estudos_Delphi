object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'CRUD'
  ClientHeight = 632
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 89
    Align = alTop
    Color = 9415723
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 943
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 943
      Height = 87
      Align = alClient
      Alignment = taCenter
      Caption = 'CRUD de Clientes'
      Color = 6888724
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 328
      ExplicitHeight = 54
    end
  end
  object DBGrid1: TDBGrid
    Left = 319
    Top = 200
    Width = 313
    Height = 120
    DataSource = dsClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object btnExcluir: TButton
    Left = 320
    Top = 416
    Width = 75
    Height = 49
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
  object btnNovo: TButton
    Left = 548
    Top = 416
    Width = 75
    Height = 49
    Caption = 'Novo'
    TabOrder = 3
    OnClick = btnNovoClick
  end
  object btnEditar: TButton
    Left = 432
    Top = 416
    Width = 75
    Height = 49
    Caption = 'Editar'
    TabOrder = 4
    OnClick = btnEditarClick
  end
  object dsClientes: TDataSource
    Left = 224
    Top = 120
  end
end
