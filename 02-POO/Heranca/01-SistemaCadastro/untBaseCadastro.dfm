object frmBaseCadastro: TfrmBaseCadastro
  Left = 0
  Top = 0
  Caption = 'untBaseCadastro'
  ClientHeight = 526
  ClientWidth = 1067
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
    Width = 1067
    Height = 97
    Align = alTop
    Color = 6888724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 8
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 304
      Height = 45
      Align = alBottom
      Alignment = taCenter
      Caption = 'Sistema de Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 328
    Top = 192
    Width = 401
    Height = 249
    Color = 6888724
    ParentBackground = False
    TabOrder = 1
    object edtNome: TEdit
      Left = 56
      Top = 71
      Width = 297
      Height = 23
      TabOrder = 0
    end
    object edtDocumento: TEdit
      Left = 56
      Top = 127
      Width = 169
      Height = 23
      TabOrder = 1
    end
    object btnSalvar: TButton
      Left = 152
      Top = 176
      Width = 91
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
  end
end
