unit untInterface;

interface

type
  IPagamento= interface
  ['{D879A4AC-BDE8-41BE-882D-763130DBCEC8}']

  function Pagar(Valor: Currency) : string;

  end;

implementation

end.
