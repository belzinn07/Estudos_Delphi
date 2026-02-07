object frmClientePrincipal: TfrmClientePrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Clientes'
  ClientHeight = 667
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 81
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1012
    object Label1: TLabel
      Left = 33
      Top = 9
      Width = 117
      Height = 45
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dbgClientes: TDBGrid
    Left = 288
    Top = 176
    Width = 449
    Height = 201
    DataSource = DMConexao.dsClientes
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnNovo: TButton
    Left = 637
    Top = 448
    Width = 99
    Height = 41
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnEditar: TButton
    Left = 461
    Top = 448
    Width = 99
    Height = 41
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditarClick
  end
  object btnExcluir: TButton
    Left = 287
    Top = 448
    Width = 99
    Height = 41
    Caption = 'Excluir'
    TabOrder = 4
  end
end
