program ProjetoPessoas;

uses
  Vcl.Forms,
  uFrmPrincipal in 'src\View\uFrmPrincipal.pas' {Form1},
  uPessoa in 'src\Model\uPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
