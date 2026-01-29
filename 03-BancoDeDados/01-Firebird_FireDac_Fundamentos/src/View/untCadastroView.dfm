object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 877
  ClientWidth = 1058
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
    Width = 1058
    Height = 81
    Align = alTop
    Color = 6888724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 624
    object Label4: TLabel
      Left = 1
      Top = 1
      Width = 1056
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
      ExplicitLeft = 480
      ExplicitTop = 38
      ExplicitWidth = 305
      ExplicitHeight = 45
    end
  end
  object Panel2: TPanel
    Left = 296
    Top = 216
    Width = 513
    Height = 361
    Color = 6888724
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 64
      Top = 99
      Width = 18
      Height = 23
      Caption = 'ID'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 99
      Width = 30
      Height = 23
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 179
      Width = 48
      Height = 23
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSalvar: TButton
      Left = 200
      Top = 281
      Width = 105
      Height = 32
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object edtNome: TEdit
      Left = 48
      Top = 224
      Width = 417
      Height = 31
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtCPF: TEdit
      Left = 184
      Top = 128
      Width = 281
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtID: TEdit
      Left = 48
      Top = 128
      Width = 65
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
end
