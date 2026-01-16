program ValidadorDeCPF;

uses
  Vcl.Forms,
  untCliente in 'src\Model\untCliente.pas',
  frmCliente in 'src\View\frmCliente.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
