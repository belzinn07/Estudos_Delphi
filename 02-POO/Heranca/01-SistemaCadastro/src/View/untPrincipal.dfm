object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Cadastro'
  ClientHeight = 518
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 97
    Align = alTop
    Color = 6888724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1065
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1096
      Height = 95
      Align = alClient
      Alignment = taCenter
      Caption = 'Sistema de Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 304
      ExplicitHeight = 45
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 1098
    Height = 421
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 1
    object Panel3: TPanel
      Left = 192
      Top = 144
      Width = 241
      Height = 129
      BorderStyle = bsSingle
      Color = 6888724
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 64
        Top = 24
        Width = 102
        Height = 37
        Caption = 'Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnCadClientes: TButton
        Left = 80
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Cadastar'
        TabOrder = 0
        OnClick = btnCadClientesClick
      end
    end
    object Panel4: TPanel
      Left = 648
      Top = 144
      Width = 241
      Height = 129
      BorderStyle = bsSingle
      Color = 6888724
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 64
        Top = 24
        Width = 121
        Height = 37
        Caption = 'Empresas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnCadEmpresa: TButton
        Left = 80
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Cadastar'
        TabOrder = 0
        OnClick = btnCadEmpresaClick
      end
    end
  end
end
