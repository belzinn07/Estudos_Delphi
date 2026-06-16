unit uIContatoRepository;

interface

uses
  uContato;

type
  IContatoRepository = interface
      ['{A80BBF01-1A62-4153-A600-6DC2FCC5D55B}']
      procedure ListarContatos;
      procedure Inserir(AContato: TContato);
      procedure Editar(AContato: TContato);
      procedure Excluir(AContato: TContato);
      function BuscarPorId(AId: Integer): TContato;



  end;

implementation

end.
