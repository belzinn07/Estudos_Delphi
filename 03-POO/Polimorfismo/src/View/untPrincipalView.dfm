object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Cadastro'
  ClientHeight = 610
  ClientWidth = 1134
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
    Width = 1134
    Height = 73
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1132
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1132
      Height = 71
      Align = alClient
      Alignment = taCenter
      Caption = 'Sistema De Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 265
      ExplicitHeight = 37
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1134
    Height = 537
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1132
    ExplicitHeight = 529
    object Panel3: TPanel
      Left = 256
      Top = 159
      Width = 193
      Height = 105
      Color = 6888724
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 191
        Height = 103
        Align = alClient
        Alignment = taCenter
        Caption = 'Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 75
        ExplicitHeight = 28
      end
      object btnCadastarCliente: TButton
        Left = 48
        Top = 50
        Width = 100
        Height = 25
        Align = alCustom
        Caption = 'Cadastrar'
        TabOrder = 0
        OnClick = btnCadastarClienteClick
      end
    end
    object Panel4: TPanel
      Left = 704
      Top = 159
      Width = 193
      Height = 105
      Color = 6888724
      ParentBackground = False
      TabOrder = 1
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 191
        Height = 103
        Align = alClient
        Alignment = taCenter
        Caption = 'Empresas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 89
        ExplicitHeight = 28
      end
      object btnCadastrarEmpresa: TButton
        Left = 48
        Top = 48
        Width = 100
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 0
        OnClick = btnCadastrarEmpresaClick
      end
    end
  end
end
