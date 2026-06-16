unit uContatoService;

interface

uses
  uIContatoRepository, uContato, System.SysUtils;

type
  TContatoService = class

  private
   FRepository: IContatoRepository;

  public
    constructor Create(ARepository: IContatoRepository);
    procedure ListarContatos;
    procedure Salvar(AContato : TContato);
    procedure Excluir(AContato: TContato);
    function BuscarPorId(AId: Integer): TContato;

  end;

implementation

{ TContatoService }



function TContatoService.BuscarPorId(AId: Integer): TContato;
begin
Result := FRepository.BuscarPorId(AId);
end;

constructor TContatoService.Create(ARepository: IContatoRepository);
begin

FRepository := ARepository;

end;

procedure TContatoService.ListarContatos;
begin

FRepository.ListarContatos;
end;

procedure TContatoService.Salvar(AContato: TContato);
begin
AContato.Validar;

if AContato.Id = 0 then
  FRepository.Inserir(AContato)
else
  FRepository.Editar(AContato);

end;

procedure TContatoService.Excluir(AContato: TContato);
begin

FRepository.Excluir(AContato);

end;



end.
