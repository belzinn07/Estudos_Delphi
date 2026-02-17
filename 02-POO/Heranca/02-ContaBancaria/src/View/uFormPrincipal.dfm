object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 513
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 73
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 965
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 965
      Height = 71
      Align = alClient
      Alignment = taCenter
      Caption = 'Sistema Banc'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 256
      ExplicitHeight = 45
    end
  end
  object pnlCardContaCorrente: TPanel
    Left = 176
    Top = 226
    Width = 241
    Height = 129
    BorderStyle = bsSingle
    Color = 6888724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object lblContaConrrente: TLabel
      Left = 24
      Top = 24
      Width = 196
      Height = 37
      Caption = 'Conta Corrente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnContaCorrente: TButton
      Left = 80
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 0
      OnClick = btnContaCorrenteClick
    end
  end
  object pnlCardContaPoupanca: TPanel
    Left = 524
    Top = 226
    Width = 241
    Height = 129
    BorderStyle = bsSingle
    Color = 6888724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object lblContaPoupanca: TLabel
      Left = 16
      Top = 24
      Width = 208
      Height = 37
      Caption = 'Conta Poupan'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnContaPoupanca: TButton
      Left = 80
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 0
      OnClick = btnContaPoupancaClick
    end
  end
end
