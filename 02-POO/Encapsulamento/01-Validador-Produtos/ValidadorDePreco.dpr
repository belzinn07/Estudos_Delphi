program ValidadorDePreco;

uses
  Vcl.Forms,
  uProduto in 'src\Model\uProduto.pas',
  uFrmPrincipal in 'src\View\uFrmPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
