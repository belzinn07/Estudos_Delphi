unit untCliente;

interface

type
  TCliente = class
  private
    FNome: string;
    FCPF: string;
  public
    property Nome: string read FNome write FNome;
    property CPF: string read FCPF write FCPF;

    function ValidarCPF: Boolean;
  end;

implementation

{ Tcliente }

function TCliente.ValidarCPF: Boolean;
begin
  Result:= Length(CPF) = 11;
end;

end.
