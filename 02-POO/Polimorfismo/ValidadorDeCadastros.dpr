program ValidadorDeCadastros;

uses
  Vcl.Forms,
  untInterface in 'src\Model\Interfaces\untInterface.pas',
  untValidadorCNPJ in 'src\Model\Validadores\untValidadorCNPJ.pas',
  untPessoa in 'src\Model\Entities\untPessoa.pas',
  untCadastroViewModel in 'src\ViewModel\untCadastroViewModel.pas',
  untValidadorCPF in 'src\Model\Validadores\untValidadorCPF.pas',
  untPrincipalView in 'src\View\untPrincipalView.pas' {frmPrincipal},
  untBaseCadastro in 'src\View\untBaseCadastro.pas' {frmBaseCadastro},
  untCadastroClienteView in 'src\View\untCadastroClienteView.pas' {frmCadastroCliente},
  untCadastroEmpresaView in 'src\View\untCadastroEmpresaView.pas' {frmCadastroEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroEmpresa, frmCadastroEmpresa);
  Application.Run;
end.
