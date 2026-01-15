object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 737
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 464
    Top = 176
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Produtos2: TMenuItem
        Caption = 'Produtos'
        object CriarNovoProduto1: TMenuItem
          Caption = 'Criar Novo Produto'
        end
        object AtualizarProduto1: TMenuItem
          Caption = 'Atualizar Produto'
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object ListarTodos1: TMenuItem
          Caption = 'Listar Todos'
        end
      end
      object Clientes2: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Cadastrodetabela1: TMenuItem
        Caption = 'Cadastro de tabela'
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object EntradadeMercadorias1: TMenuItem
        Caption = 'Entrada de Mercadorias'
      end
      object SadadeMercadorias1: TMenuItem
        Caption = 'Sa'#237'da de Mercadorias'
      end
    end
    object ContaCorrente1: TMenuItem
      Caption = 'Conta Corrente'
      object Saldo1: TMenuItem
        Caption = 'Saldo '
      end
      object Gastos1: TMenuItem
        Caption = 'Gastos'
      end
    end
    object ContaCorrente2: TMenuItem
      Caption = 'Caixa'
      object FechamentodeCaixa1: TMenuItem
        Caption = 'Fechamento de Caixa'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object LastrodeCaixa1: TMenuItem
        Caption = 'Lastro de Caixa'
      end
      object SangriadeCaixa1: TMenuItem
        Caption = 'Sangria de Caixa'
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object MapadeVendas1: TMenuItem
        Caption = 'Mapa de Vendas'
      end
      object GastosMensais1: TMenuItem
        Caption = 'Gastos Mensais'
      end
    end
    object Manuteno1: TMenuItem
      Caption = 'Manuten'#231#227'o'
      object Configuraes1: TMenuItem
        Caption = 'Configura'#231#245'es'
      end
      object Atualizao1: TMenuItem
        Caption = 'Atualiza'#231#227'o'
      end
    end
    object DocsFiscais1: TMenuItem
      Caption = 'Docs. Fiscais'
      object MFESat1: TMenuItem
        Caption = 'MFE-Sat'
      end
      object NFe1: TMenuItem
        Caption = 'NFe'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
