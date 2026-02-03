program ConsultasDataModule;

uses
  Vcl.Forms,
  untDataModule in '..\untDataModule.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
