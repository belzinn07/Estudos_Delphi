unit untFormularioClienteView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  untClienteService, untCliente, untDMConexao;

type
  TFormularioClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtNome: TEdit;
    edtCPF: TEdit;
    lblNome: TLabel;
    lblCPF: TLabel;
    Panel2: TPanel;
    btnSalvar: TButton;
    btnVoltar: TButton;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDM: TDMConexao;
    FService: TClienteService;
  public
  ModoEdicao: Boolean;
  IDCliente: Integer;


  end;

var
  FormularioClientes: TFormularioClientes;


implementation

{$R *.dfm}

procedure TFormularioClientes.btnSalvarClick(Sender: TObject);
var
  Cliente: TCliente;
begin
  Cliente := TCliente.Create(edtNome.Text, edtCPF.Text);
  try

    Cliente.Id := IDCliente;
    Cliente.Nome := edtNome.Text;
    Cliente.CPF := edtCPF.Text;

    if ModoEdicao then
    begin

      FService.AtualizarCliente(Cliente);
      ShowMessage('Cliente atualizado com sucesso');
    end
    else
    begin
      FService.AdicionarCliente(Cliente);
      ShowMessage('Cliente adicionado com sucesso');
    end;

  finally
    Cliente.Free;
  end;
end;


procedure TFormularioClientes.FormCreate(Sender: TObject);
begin

FDM :=  TDMConexao.Create(nil);
FService := TClienteService.Create(FDM);

end;

procedure TFormularioClientes.FormDestroy(Sender: TObject);
begin
FService.Free;
FDM.Free;
end;

end.
