program SistemaDeCadastro;

uses
  Vcl.Forms,
  untPessoa in 'untPessoa.pas',
  untCliente in 'untCliente.pas',
  untEmpresa in 'untEmpresa.pas',
  untBaseCadastro in 'untBaseCadastro.pas' {frmBaseCadastro},
  untCadastroCliente in 'untCadastroCliente.pas' {frmCadastroCliente},
  untCadastroEmpresa in 'untCadastroEmpresa.pas' {frmCadastroEmpresa},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroEmpresa, frmCadastroEmpresa);
  Application.Run;
end.
