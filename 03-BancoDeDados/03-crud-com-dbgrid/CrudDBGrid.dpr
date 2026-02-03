program CrudDBGrid;

uses
  Vcl.Forms,
  untCrudClientes in 'untCrudClientes.pas' {frmPrincipal},
  untDataModule in 'untDataModule.pas' {DataModule2: TDataModule},
  untCadastroCliente in 'untCadastroCliente.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFormCadastro, FormCadastro);
  Application.Run;
end.
