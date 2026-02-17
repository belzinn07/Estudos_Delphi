program MiniSistemaComercial;

uses
  Vcl.Forms,
  untDMConexao in 'src\infra\untDMConexao.pas' {DMConexao: TDataModule},
  untFormularioClienteView in 'src\view\untFormularioClienteView.pas' {FormularioClientes},
  untClientesView in 'src\view\untClientesView.pas' {frmClientePrincipal},
  untCliente in 'src\model\untCliente.pas',
  untIValidador in 'src\model\contracts\untIValidador.pas',
  untClienteRepository in 'src\repository\untClienteRepository.pas',
  untClienteService in 'src\service\untClienteService.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmClientePrincipal, frmClientePrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFormularioClientes, FormularioClientes);
  Application.Run;
end.
