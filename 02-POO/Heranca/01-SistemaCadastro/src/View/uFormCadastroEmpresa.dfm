inherited frmCadastroEmpresa: TfrmCadastroEmpresa
  Caption = 'frmCadastroEmpresa'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      Width = 304
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 51
    end
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
    object Label2: TLabel [0]
      Left = 88
      Top = 8
      Width = 240
      Height = 37
      Caption = 'Cadastrar Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel [1]
      Left = 56
      Top = 48
      Width = 37
      Height = 17
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel [2]
      Left = 56
      Top = 104
      Width = 31
      Height = 17
      Caption = 'CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited edtNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtDocumento: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
  end
end
