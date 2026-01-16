unit frmPrincipal;

interface

uses
  untProduto,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    edtNome: TEdit;
    Label3: TLabel;
    edtPreco: TEdit;
    btnValidar: TButton;
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnValidarClick(Sender: TObject);

var
Produto : TProduto;
precoCovertido: Currency;

begin

Produto := TProduto.Create;

try
  Produto.Nome := edtNome.Text;
  Produto.Preco := StrToCurr(edtPreco.Text);

  if Produto.ValidarPreco then
  ShowMessage('Preço Válido')
  else
  ShowMessage('Preço Inválido')

finally

Produto.Free;

end;
end;

end.
