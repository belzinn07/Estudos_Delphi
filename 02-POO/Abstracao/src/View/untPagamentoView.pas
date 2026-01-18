unit untPagamentoView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,

  untInterface, untPagamentoService, untPagamentoCartao, untPagamentoPix,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmPagamento = class(TForm)
    btnPagar: TButton;
    cbxPagamento: TComboBox;
    edtValor: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    procedure btnPagarClick(Sender: TObject);

  end;

var
  frmPagamento: TfrmPagamento;

implementation

{$R *.dfm}

procedure TfrmPagamento.btnPagarClick(Sender: TObject);

var
FormaPagamento: IPagamento;
Valor : Currency;

begin


  try

  Valor := StrToCurr(edtValor.Text)

  except

  end;


  if cbxPagamento.ItemIndex = -1 then
  begin
    ShowMessage('Por favor, selecione uma forma de pagamento.');
    Exit;
  end;

  case cbxPagamento.ItemIndex of
    0: FormaPagamento := TPagamentoPix.Create;
    1: FormaPagamento := TPagamentoCartao.Create;

  end;

  TPagamentoService.FinalizarPagamento(valor, FormaPagamento);

end;

end.
