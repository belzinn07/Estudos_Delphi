unit uContato;

interface

uses uValidador, System.SysUtils;

type
  TContato = class(TInterfacedObject, IValidador)

   private
     FId : Integer;
     FNome : string;
     FTelefone : string;

   public

     property Id : Integer read FId write FId;
     property Nome : string read FNome write FNome;
     property Telefone: string read FTelefone write FTelefone;

     procedure Validar;

  end;

implementation


procedure ValidarCampo(Condicao: Boolean; const Mensagem: String);
begin
  if not Condicao then
    raise Exception.Create(Mensagem);
end;


procedure TContato.Validar;
begin

  ValidarCampo(Trim(FNome) <> '', 'Nome não informado ❌');
  ValidarCampo(Trim(FTelefone) <> '', 'Telefone não informado ❌');
  ValidarCampo(Length((FTelefone)) in [10,11], 'Telefone Inválido ❌' );

end;

end.
