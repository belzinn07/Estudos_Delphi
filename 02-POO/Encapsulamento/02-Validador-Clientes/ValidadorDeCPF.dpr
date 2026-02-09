program ValidadorDeCPF;

uses
  Vcl.Forms,
  uCliente in 'src\Model\uCliente.pas',
  uFrmCliente in 'src\View\uFrmCliente.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
