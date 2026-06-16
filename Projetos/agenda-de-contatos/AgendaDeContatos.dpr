program AgendaDeContatos;

uses
  Vcl.Forms,
  uPrincipa.View in 'src\View\uPrincipa.View.pas' {FormPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uContato in 'src\model\uContato.pas',
  uValidador in 'src\model\interfaces\uValidador.pas',
  uDMPrincipal in 'src\infra\uDMPrincipal.pas' {DMPrincipal: TDataModule},
  uIContatoRepository in 'src\repository\Interfaces\uIContatoRepository.pas',
  uContatoRepository in 'src\repository\uContatoRepository.pas',
  uContatoService in 'src\service\uContatoService.pas',
  uFormularioContato.View in 'src\View\uFormularioContato.View.pas' {FormContato},
  uDialogoConfirmacao in 'src\View\uDialogoConfirmacao.pas' {FormConfirmacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormContato, FormContato);
  Application.Run;
end.
Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormContato, FormContato);
  Application.CreateForm(TFormConfirmacao, FormConfirmacao);

