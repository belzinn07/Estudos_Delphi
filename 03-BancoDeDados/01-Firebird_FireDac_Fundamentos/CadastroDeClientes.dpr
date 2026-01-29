program CadastroDeClientes;

uses
  Vcl.Forms,
  untCadastroView in 'src\View\untCadastroView.pas' {frmCadastro},
  untDMConexao in 'src\Model\untDMConexao.pas' {TdmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TTdmConexao, TdmConexao);
  Application.Run;
end.
