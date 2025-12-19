program Project3;

uses
  Vcl.Forms,
  uProdutos in 'uProdutos.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
