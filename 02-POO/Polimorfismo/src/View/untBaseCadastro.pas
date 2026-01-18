unit untBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,

  untCadastroViewModel,untPessoa, untInterface;

type
  TfrmBaseCadastro = class(TForm)
    frmBaseCadastro: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    edtNome: TEdit;
    edtDocumento: TEdit;
    btnSalvar: TBitBtn;
    btnFechar: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);

  protected
    function GetPessoa: TPessoa; virtual; abstract;
    function CriarValidador: IValidador; virtual;abstract;
  end;

var
  frmBaseCadastro: TfrmBaseCadastro;

implementation

{$R *.dfm}

procedure TfrmBaseCadastro.btnSalvarClick(Sender: TObject);
var
  viewModel: TCadastroViewModel;
  vPessoa: TPessoa;
begin
  vPessoa := GetPessoa; // Recebe a instância da tela filha

  // Criamos a ViewModel passando a Pessoa e o Validador
  viewModel := TCadastroViewModel.Create(vPessoa, CriarValidador);
  try
    if viewModel.Salvar(edtNome.Text, edtDocumento.Text) then
      ShowMessage('Sucesso ao validar')
    else
      ShowMessage('Documento Inválido');
  finally
    // A ViewModel deve dar Free na Pessoa internamente ou você faz aqui:
    viewModel.Free;

  end;
end;

end.
