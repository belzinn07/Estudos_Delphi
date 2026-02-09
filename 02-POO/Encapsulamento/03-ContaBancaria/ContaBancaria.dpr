program ContaBancaria;

uses
  Vcl.Forms,
  uContaBancaria in 'Model\uContaBancaria.pas',
  uFormPrincipal in 'View\uFormPrincipal.pas' {frmContaBancaria};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmContaBancaria, frmContaBancaria);
  Application.Run;
end.
