inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'frmCadastroCliente'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      Width = 304
      Align = alClient
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 51
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
      Width = 221
      Height = 37
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastrar Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
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
