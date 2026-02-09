object frmContaBancaria: TfrmContaBancaria
  Left = 0
  Top = 0
  Caption = 'frmContaBancaria'
  ClientHeight = 573
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label2: TLabel
    Left = 256
    Top = 193
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 89
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1041
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 790
      Height = 87
      Align = alClient
      Alignment = taCenter
      Caption = 'Conta Banc'#225'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 392
      ExplicitTop = 13
      ExplicitWidth = 225
      ExplicitHeight = 45
    end
  end
  object edtValor: TEdit
    Left = 256
    Top = 216
    Width = 249
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnSacar: TButton
    Left = 280
    Top = 264
    Width = 91
    Height = 41
    Caption = 'Sacar'
    TabOrder = 2
    OnClick = btnSacarClick
  end
  object btnDepositar: TButton
    Left = 398
    Top = 264
    Width = 83
    Height = 41
    Caption = 'Depositar'
    TabOrder = 3
    OnClick = btnDepositarClick
  end
  object mmExtrato: TMemo
    Left = 232
    Top = 360
    Width = 329
    Height = 121
    Lines.Strings = (
      'Extrato Banc'#225'rio:')
    TabOrder = 4
  end
end
