unit untCadastroViewModel;

interface

uses
  untPessoa, untInterface;

type
  TCadastroViewModel = class

    private
      FPessoa: TPessoa;
      FValidador: IValidador;

    public
      constructor Create(APessoa: TPessoa; AValidador: IValidador);
      destructor Destroy; override;

      function Salvar(Nome,Documento : string) : Boolean;

  end;

implementation

constructor TCadastroViewModel.Create(APessoa: TPessoa; AValidador: IValidador);
begin
  FPessoa := APessoa;
  FValidador := AValidador;
end;

destructor TCadastroViewModel.Destroy;
begin
  FPessoa.Free;
  inherited;
end;

function TCadastroViewModel.Salvar(Nome: string; Documento: string): Boolean;
begin
  FPessoa.Nome := Nome;
  FPessoa.Documento := Documento;

  Result := FValidador.Validar(Documento);
end;

end.
