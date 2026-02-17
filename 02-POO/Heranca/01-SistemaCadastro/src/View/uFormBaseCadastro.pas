unit uFormBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  untPessoa;

type
  TfrmBaseCadastro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    edtNome: TEdit;
    edtDocumento: TEdit;
    btnSalvar: TButton;
    procedure btnSalvarClick(Sender: TObject);

   protected
     function GetPessoa: TPessoa; virtual; abstract;
  end;

var
  frmBaseCadastro: TfrmBaseCadastro;

implementation

{$R *.dfm}

procedure TfrmBaseCadastro.btnSalvarClick(Sender: TObject);

var
  pessoa: TPessoa;

begin
  pessoa := GetPessoa;

  try
    pessoa.Nome := edtNome.Text;
    pessoa.Documento := edtDocumento.Text;

    if pessoa.ValidarDocumento then
      ShowMessage('Sucesso ao validar. Cadastro Realizado com Sucesso')
    else
      ShowMessage('Documento inválido');

    Close;

  finally
      pessoa.Free;
  end;
end;

end.
