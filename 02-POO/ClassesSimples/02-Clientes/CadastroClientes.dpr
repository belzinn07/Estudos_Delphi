program CadastroClientes;

uses
  Vcl.Forms,
  frmCliente in 'frmCliente.pas' {Form1},
  untCliente in 'untCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
