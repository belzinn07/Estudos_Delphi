program CrudDBGrid;

uses
  Vcl.Forms,
  untCrudClientesView in 'src\view\untCrudClientesView.pas' {frmPrincipal},
  untDataModule in 'src\infra\untDataModule.pas' {DataModule2: TDataModule},
  untCadastroCliente in 'src\view\untCadastroCliente.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFormCadastro, FormCadastro);
  Application.Run;
end.
