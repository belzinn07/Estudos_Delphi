inherited frmCadastroEmpresa: TfrmCadastroEmpresa
  Caption = 'Cadastro de Empresas'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = 2
  ExplicitTop = 2
  TextHeight = 15
  inherited frmBaseCadastro: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1140
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 97
    ExplicitWidth = 1140
    ExplicitHeight = 520
    inherited Panel2: TPanel
      StyleElements = [seFont, seClient, seBorder]
      object Label2: TLabel [0]
        Left = 56
        Top = 67
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
      object Label3: TLabel [1]
        Left = 56
        Top = 129
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
end
