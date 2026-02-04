unit untCliente;

interface

uses
  untPessoa;

type
  TCliente = class(TPessoa)

  private
    FLimiteDeCredito: Currency;

  public
    property LimiteDeCredito: Currency read FLimiteDeCredito write FLimiteDeCredito;

    function ValidarDocumento: Boolean;override;
  end;

implementation

function TCliente.ValidarDocumento: Boolean;
begin
  Result:= Length(Documento) = 11;
end;

end.
