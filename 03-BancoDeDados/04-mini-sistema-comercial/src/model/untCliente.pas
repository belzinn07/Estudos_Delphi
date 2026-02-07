unit untCliente;

interface

uses 
System.SysUtils,
untIValidador;

type
  TCliente = class(TInterfacedObject, Ivalidador)

   private
     FId: Integer;
     FNome: string;
     FCPF: string;

   public
     constructor Create( ANome: string; ACPF: string);
     procedure Validar;

     property Id: Integer read FId write FId;
     property Nome: string read FNome write FNome;
     property CPF : string read FCPF write FCPF;

  end;

implementation

constructor TCliente.Create(ANome: string; ACPF: string);
begin


FNome := ANome;
FCPF := ACPF;

end;

procedure TCliente.Validar;
begin

if FNome.Trim.IsEmpty then
  raise Exception.Create('Nome é obrigatório');

if FCPF.Trim.IsEmpty then
  raise Exception.Create('CPF é obrigatório');  

if Length(FCPF) <> 11 then
  raise Exception.Create('CPF inválido');
    
end;

end.
