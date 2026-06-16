object FormContato: TFormContato
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'FormContato'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 622
    ExplicitHeight = 433
    object Label1: TLabel
      Left = 120
      Top = 105
      Width = 47
      Height = 21
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 120
      Top = 186
      Width = 66
      Height = 21
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 264
      Top = 33
      Width = 79
      Height = 30
      Caption = 'Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNome: TEdit
      Left = 120
      Top = 136
      Width = 377
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtTelefone: TEdit
      Left = 120
      Top = 213
      Width = 377
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnSalvar: TBitBtn
      Left = 349
      Top = 288
      Width = 108
      Height = 41
      Caption = 'Salvar'
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnCancelar: TBitBtn
      Left = 168
      Top = 288
      Width = 105
      Height = 41
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
    end
  end
end
