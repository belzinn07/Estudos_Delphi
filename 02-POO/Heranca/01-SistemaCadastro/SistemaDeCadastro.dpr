program SistemaDeCadastro;

uses
  Vcl.Forms,
  uFormBaseCadastro in 'src\View\uFormBaseCadastro.pas' {frmBaseCadastro},
  uFormCadastroCliente in 'src\View\uFormCadastroCliente.pas' {frmCadastroCliente},
  uFormCadastroEmpresa in 'src\View\uFormCadastroEmpresa.pas' {frmCadastroEmpresa},
  uFormPrincipal in 'src\View\uFormPrincipal.pas' {frmPrincipal},
  untCliente in 'src\Model\untCliente.pas',
  untEmpresa in 'src\Model\untEmpresa.pas',
  untPessoa in 'src\Model\untPessoa.pas',
  uContaBancaria in '..\02-ContaBancaria\src\Model\uContaBancaria.pas',
  uContaCorrente in '..\02-ContaBancaria\src\Model\uContaCorrente.pas',
  uFormBase in '..\02-ContaBancaria\src\View\uFormBase.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBaseCadastro, frmBaseCadastro);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroEmpresa, frmCadastroEmpresa);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
