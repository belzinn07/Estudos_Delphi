program ValidadorDePreco;

uses
  Vcl.Forms,
  untProduto in 'src\Model\untProduto.pas',
  frmPrincipal in 'src\View\frmPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
