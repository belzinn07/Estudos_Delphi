unit untCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  untDataModule;

type
  TFormCadastro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtNome: TEdit;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    ModoEdicao:Boolean;
    IDCliente: Integer;

  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}



procedure TFormCadastro.btnCancelarClick(Sender: TObject);
begin

DMConexao.Cancelar;
edtNome.Clear;
Exit;

end;

procedure TFormCadastro.btnSalvarClick(Sender: TObject);
begin

 if Trim(edtNome.Text) = '' then
  begin
    ShowMessage('Digite um nome.');
    Exit;
  end;


if ModoEdicao then
begin
DMConexao.AtualizarCliente(IDCliente, edtNome.Text);;
ShowMessage('Cliente Atualizado com sucesso');
end
else
begin
DMConexao.InserirCliente(edtNome.Text);
ShowMessage('Cliente inserido com sucesso');
end;

edtNome.Clear;

Close;

end;

end.
