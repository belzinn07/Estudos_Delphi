program SistemaDeCadastro;

uses
  Vcl.Forms,
  untBaseCadastro in 'src\View\untBaseCadastro.pas' {frmBaseCadastro},
  untCadastroCliente in 'src\View\untCadastroCliente.pas' {frmCadastroCliente},
  untCadastroEmpresa in 'src\View\untCadastroEmpresa.pas' {frmCadastroEmpresa},
  untPrincipal in 'src\View\untPrincipal.pas' {frmPrincipal},
  untCliente in 'src\Model\untCliente.pas',
  untEmpresa in 'src\Model\untEmpresa.pas',
  untPessoa in 'src\Model\untPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBaseCadastro, frmBaseCadastro);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroEmpresa, frmCadastroEmpresa);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
