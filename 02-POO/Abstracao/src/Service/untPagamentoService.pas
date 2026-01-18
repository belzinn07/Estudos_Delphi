unit untPagamentoService;

interface

uses
  untInterface, SysUtils, Vcl.Dialogs;

type
  TPagamentoService = class

    public
      class procedure FinalizarPagamento( Valor:Currency; FormaPagamento: IPagamento);

  end;


implementation

{ TPagamentoService }

class procedure TPagamentoService.FinalizarPagamento(Valor: Currency; FormaPagamento: IPagamento);
begin

  ShowMessage('Iniciando fechamento de venda...');
  ShowMessage(FormaPagamento.Pagar(Valor));
  ShowMessage('Venda Finalizada');
end;


end.
