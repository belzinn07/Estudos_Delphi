inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'frmCadastroCliente'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 1083
  ExplicitHeight = 565
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitWidth = 1065
    inherited Label1: TLabel
      Width = 1065
      Height = 95
      Align = alClient
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
    object Label2: TLabel [0]
      Left = 56
      Top = 106
      Width = 20
      Height = 15
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel [1]
      Left = 56
      Top = 50
      Width = 34
      Height = 15
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel [2]
      Left = 1
      Top = 1
      Width = 399
      Height = 247
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastrar Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 88
      ExplicitTop = 8
      ExplicitWidth = 221
      ExplicitHeight = 37
    end
    inherited edtNome: TEdit
      Alignment = taCenter
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtDocumento: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
  end
end
