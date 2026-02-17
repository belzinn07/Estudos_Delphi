program SistemaBancario;

uses
  Vcl.Forms,
  uFormPrincipal in 'src\View\uFormPrincipal.pas' {frmPrincipal},
  uFormBase in 'src\View\uFormBase.pas' {frmBase},
  uContaBancaria in 'src\Model\uContaBancaria.pas',
  uContaCorrente in 'src\Model\uContaCorrente.pas',
  uFormContaCorrente in 'src\View\uFormContaCorrente.pas' {frmContaCorrente},
  uFormContaPoupanca in 'src\View\uFormContaPoupanca.pas' {frmContaPoupanca},
  uContaPoupanca in 'src\Model\uContaPoupanca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmContaCorrente, frmContaCorrente);
  Application.CreateForm(TfrmContaPoupanca, frmContaPoupanca);
  Application.Run;
end.
