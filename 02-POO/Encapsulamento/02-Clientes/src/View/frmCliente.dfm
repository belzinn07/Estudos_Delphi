object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 604
  ClientWidth = 1107
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
    Width = 1107
    Height = 105
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1105
    object Label1: TLabel
      Left = 72
      Top = 21
      Width = 295
      Height = 45
      Caption = 'Cadastro De Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 1107
    Height = 499
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1105
    ExplicitHeight = 491
    object Panel3: TPanel
      Left = 304
      Top = 127
      Width = 465
      Height = 245
      Color = 6888724
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 96
        Top = 16
        Width = 269
        Height = 32
        Caption = 'Formul'#225'rio de Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 54
        Top = 64
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
      object Label4: TLabel
        Left = 54
        Top = 116
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
      object edtNome: TEdit
        Left = 54
        Top = 87
        Width = 353
        Height = 23
        TabOrder = 0
        TextHint = 'Digite o nome do cliente...'
      end
      object edtCPF: TEdit
        Left = 54
        Top = 139
        Width = 353
        Height = 23
        TabOrder = 1
        TextHint = 'Digite o CPF'
      end
      object btnValidar: TButton
        Left = 184
        Top = 174
        Width = 75
        Height = 25
        Caption = 'Validar'
        TabOrder = 2
        OnClick = btnValidarClick
      end
    end
  end
end
