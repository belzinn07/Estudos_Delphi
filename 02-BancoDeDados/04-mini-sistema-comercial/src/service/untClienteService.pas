unit untClienteService;

interface

uses
FireDAC.Comp.Client,

untCliente,untDMConexao, untClienteRepository;

type
  TClienteService = class

     private
      FDM : TDMConexao;
      FRepository : TClienteRepository;

     public
      constructor Create(ADM: TDMConexao; ARepository: TClienteRepository);

      procedure AdicionarCliente(ACliente: TCliente);
      procedure AtualizarCliente(ACliente : TCliente);
      procedure ExcluirCliente(ACliente: TCliente);

  end;

implementation

constructor TClienteService.Create(ADM: TDMConexao; ARepository: TClienteRepository);
begin

  FDM := ADM;
  FRepository := ARepository.Create(ADM);

end;

procedure TClienteService.AdicionarCliente(ACliente: TCliente);
var
  Conn : TFDConnection;
begin
  Conn := DMConexao.FDConnection;

  Conn.StartTransaction;

  try

   FRepository.InserirCliente(ACliente);
   Conn.Commit;

  except
   Conn.Rollback;
    raise;

  end;
end;

procedure TClienteService.AtualizarCliente(ACliente: TCliente);

var
 Conn: TFDConnection;

begin
  Conn := DMConexao.FDConnection;

  Conn.StartTransaction;

  try

  FRepository.AtualizarCliente(ACliente);
  Conn.Commit;

  except
    Conn.Rollback;
      raise;

  end;
end;

procedure TClienteService.ExcluirCliente(ACliente: TCliente);
var
 Conn: TFDConnection;

begin
  Conn := DMConexao.FDConnection;

  Conn.StartTransaction;

  try

  FRepository.ExcluirCliente(ACliente);
  Conn.Commit;

  except
    Conn.Rollback;
      raise;

  end;
end;

end.
