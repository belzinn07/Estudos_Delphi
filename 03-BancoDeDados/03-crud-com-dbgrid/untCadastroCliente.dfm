object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  Caption = 'frmCadastroCliente'
  ClientHeight = 466
  ClientWidth = 711
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Label2: TLabel
    Left = 216
    Top = 212
    Width = 37
    Height = 17
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 97
    Align = alTop
    Color = 9415723
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 709
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 709
      Height = 95
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
  object edtNome: TEdit
    Left = 216
    Top = 235
    Width = 281
    Height = 23
    TabOrder = 1
    TextHint = 'Digite o nome do cliente'
  end
  object btnSalvar: TButton
    Left = 392
    Top = 312
    Width = 75
    Height = 41
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 240
    Top = 312
    Width = 75
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
