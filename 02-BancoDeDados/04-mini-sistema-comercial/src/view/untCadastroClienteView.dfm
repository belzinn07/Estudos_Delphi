object frmCadastroClientes: TfrmCadastroClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Clientes'
  ClientHeight = 578
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 81
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 940
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 940
      Height = 79
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 305
      ExplicitHeight = 45
    end
  end
  object Panel2: TPanel
    Left = 280
    Top = 225
    Width = 385
    Height = 224
    Color = 6888724
    ParentBackground = False
    TabOrder = 1
    object lblCPF: TLabel
      Left = 40
      Top = 101
      Width = 23
      Height = 17
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 40
      Top = 32
      Width = 37
      Height = 17
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCPF: TEdit
      Left = 40
      Top = 124
      Width = 297
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtNome: TEdit
      Left = 40
      Top = 63
      Width = 297
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnSalvar: TButton
      Left = 232
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
    end
    object btnVoltar: TButton
      Left = 72
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 3
      OnClick = btnVoltarClick
    end
  end
end
