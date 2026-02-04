object frmBaseCadastro: TfrmBaseCadastro
  Left = 0
  Top = 0
  Caption = 'frmBaseCadastro'
  ClientHeight = 625
  ClientWidth = 1142
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object frmBaseCadastro: TPanel
    Left = 0
    Top = 0
    Width = 1142
    Height = 97
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1140
      Height = 95
      Align = alClient
      Alignment = taCenter
      Caption = 'Formul'#225'rio de Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 354
      ExplicitHeight = 45
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 1142
    Height = 528
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 472
    ExplicitTop = 296
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 344
      Top = 87
      Width = 473
      Height = 305
      Color = 6888724
      ParentBackground = False
      TabOrder = 0
      object edtNome: TEdit
        Left = 56
        Top = 88
        Width = 361
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtDocumento: TEdit
        Left = 56
        Top = 152
        Width = 361
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btnSalvar: TBitBtn
        Left = 288
        Top = 240
        Width = 107
        Height = 33
        Caption = 'Salvar'
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btnSalvarClick
      end
      object btnFechar: TBitBtn
        Left = 96
        Top = 240
        Width = 107
        Height = 33
        Caption = 'Fechar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 3
      end
    end
  end
end
