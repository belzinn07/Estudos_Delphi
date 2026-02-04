program MiniSistemaComercial;

uses
  Vcl.Forms,
  untDMConexao in 'untDMConexao.pas' {DMConexao: TDataModule},
  untCadastroClienteView in 'untCadastroClienteView.pas' {frmCadastroClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
