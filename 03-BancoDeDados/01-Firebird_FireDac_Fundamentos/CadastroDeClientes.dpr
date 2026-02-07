program CadastroDeClientes;

uses
  Vcl.Forms,
  untCadastroView in 'src\view\untCadastroView.pas' {frmCadastro},
  untDM in 'src\infra\untDM.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
