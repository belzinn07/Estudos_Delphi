object frmPagamento: TfrmPagamento
  Left = 645
  Top = 278
  Caption = 'Simulador de Pagament'
  ClientHeight = 547
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 296
    Top = 160
    Width = 257
    Height = 257
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 67
      Top = 60
      Width = 132
      Height = 17
      Caption = 'Forma de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 67
      Top = 110
      Width = 32
      Height = 17
      Caption = 'Valor'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object btnPagar: TButton
      Left = 88
      Top = 176
      Width = 81
      Height = 34
      Caption = 'Pagar'
      TabOrder = 0
      OnClick = btnPagarClick
    end
    object edtValor: TEdit
      Left = 67
      Top = 133
      Width = 121
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbxPagamento: TComboBox
      Left = 67
      Top = 83
      Width = 118
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'Pix'
        'Cart'#227'o')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 73
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 854
      Height = 71
      Align = alClient
      Alignment = taCenter
      Caption = 'Simulador de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 379
      ExplicitHeight = 45
    end
  end
end
