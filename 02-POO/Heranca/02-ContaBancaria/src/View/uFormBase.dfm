object frmBase: TfrmBase
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Base'
  ClientHeight = 420
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 17
  object Label1: TLabel
    Left = 234
    Top = 93
    Width = 32
    Height = 17
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 73
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 962
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 256
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = 'Sistema Banc'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object edtValor: TEdit
    Left = 234
    Top = 116
    Width = 233
    Height = 25
    TabOrder = 1
  end
  object btnDepositar: TButton
    Left = 376
    Top = 180
    Width = 75
    Height = 41
    Caption = 'Depositar'
    TabOrder = 2
    OnClick = btnDepositarClick
  end
  object btnSacar: TButton
    Left = 250
    Top = 180
    Width = 75
    Height = 41
    Caption = 'Sacar'
    TabOrder = 3
    OnClick = btnSacarClick
  end
  object mmExtrato: TMemo
    Left = 194
    Top = 267
    Width = 321
    Height = 128
    Lines.Strings = (
      'Extrato:')
    TabOrder = 4
  end
end
