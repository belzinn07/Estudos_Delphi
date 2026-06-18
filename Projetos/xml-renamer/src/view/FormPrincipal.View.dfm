object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'XmlRename'
  ClientHeight = 494
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 1103
    Height = 494
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1101
    ExplicitHeight = 486
    object Label1: TLabel
      Left = 112
      Top = 117
      Width = 33
      Height = 21
      Caption = 'Logs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtPasta: TEdit
      Left = 112
      Top = 69
      Width = 425
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Selecione a pasta dos xmls...'
      TextHint = 'Selecione a pasta dos xmls...'
    end
    object btnProcurarPasta: TButton
      Left = 551
      Top = 69
      Width = 75
      Height = 29
      Caption = 'Procurar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnProcurarPastaClick
    end
    object mmLog: TMemo
      Left = 112
      Top = 144
      Width = 881
      Height = 289
      TabOrder = 2
    end
    object btnAnalisar: TButton
      Left = 720
      Top = 69
      Width = 129
      Height = 29
      Caption = 'Analisar XMLs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnAnalisarClick
    end
    object btnRenomear: TButton
      Left = 888
      Top = 69
      Width = 89
      Height = 29
      Caption = 'Renomear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
end
