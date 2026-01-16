program ValidadorDeCadastros;

uses
  Vcl.Forms,
  untInterface in 'src\Model\Interfaces\untInterface.pas',
  untCliente in 'src\Model\Entities\untCliente.pas',
  untPessoa in 'src\Model\Entities\untPessoa.pas',
  untEmpresa in 'src\Model\Entities\untEmpresa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
