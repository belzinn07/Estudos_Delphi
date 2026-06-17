program XmlRenamer;

uses
  Vcl.Forms,
  FormPrincipal.View in 'src\view\FormPrincipal.View.pas' {Form1},
  XmlInfo.Model in 'src\Domain\Model\XmlInfo.Model.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
