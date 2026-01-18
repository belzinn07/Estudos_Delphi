program SimuladorDePagamento;

uses
  Vcl.Forms,
  untInterface in 'src\Model\Contracts\untInterface.pas',
  untPagamentoPix in 'src\Providers\untPagamentoPix.pas',
  untPagamentoCartao in 'src\Providers\untPagamentoCartao.pas',
  untPagamentoService in 'src\Service\untPagamentoService.pas',
  untPagamentoView in 'src\View\untPagamentoView.pas' {frmPagamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPagamento, frmPagamento);
  Application.Run;
end.
