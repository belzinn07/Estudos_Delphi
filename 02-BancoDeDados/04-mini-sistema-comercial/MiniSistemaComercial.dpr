program MiniSistemaComercial;

uses
  Vcl.Forms,
  untDMConexao in 'src\infra\untDMConexao.pas' {DMConexao: TDataModule},
  untCadastroClienteView in 'src\view\untCadastroClienteView.pas' {frmCadastroClientes},
  untClientesVew in 'src\view\untClientesVew.pas' {frmClientePrincipal},
  untCliente in 'src\model\untCliente.pas',
  untIValidador in 'src\model\contracts\untIValidador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientePrincipal, frmClientePrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
