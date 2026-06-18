program XmlRenamer;

uses
  Vcl.Forms,
  FormPrincipal.View in 'src\view\FormPrincipal.View.pas' {frmPrincipal},
  XmlInfo.Model in 'src\Domain\Model\XmlInfo.Model.pas',
  XmlScanner.Service in 'src\Service\XmlScanner.Service.pas',
  XmlRename.Service in 'src\Service\XmlRename.Service.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
