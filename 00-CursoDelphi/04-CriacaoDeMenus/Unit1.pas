unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentos1: TMenuItem;
    ContaCorrente1: TMenuItem;
    ContaCorrente2: TMenuItem;
    Relatrios1: TMenuItem;
    Manuteno1: TMenuItem;
    DocsFiscais1: TMenuItem;
    Sair1: TMenuItem;
    Produtos2: TMenuItem;
    Clientes2: TMenuItem;
    Fornecedores1: TMenuItem;
    N1: TMenuItem;
    Cadastrodetabela1: TMenuItem;
    EntradadeMercadorias1: TMenuItem;
    SadadeMercadorias1: TMenuItem;
    CriarNovoProduto1: TMenuItem;
    AtualizarProduto1: TMenuItem;
    N2: TMenuItem;
    ListarTodos1: TMenuItem;
    Saldo1: TMenuItem;
    Gastos1: TMenuItem;
    FechamentodeCaixa1: TMenuItem;
    N3: TMenuItem;
    LastrodeCaixa1: TMenuItem;
    SangriadeCaixa1: TMenuItem;
    MapadeVendas1: TMenuItem;
    GastosMensais1: TMenuItem;
    Configuraes1: TMenuItem;
    Atualizao1: TMenuItem;
    MFESat1: TMenuItem;
    NFe1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
