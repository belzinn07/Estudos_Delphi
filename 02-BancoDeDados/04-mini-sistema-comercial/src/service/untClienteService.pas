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
  FRepository := TClienteRepository.Create(ADM);

end;

procedure TClienteService.AdicionarCliente(ACliente: TCliente);
begin
  FDM.FDConnection.StartTransaction;

  try
    FRepository.InserirCliente(ACliente);
    FDM.FDConnection.Commit;

  except
    FDM.FDConnection.Rollback;
    raise;

  end;

end;


procedure TClienteService.AtualizarCliente(ACliente: TCliente);
begin
  FDM.FDConnection.StartTransaction;

  try
    FRepository.AtualizarCliente(ACliente);
    FDM.FDConnection.Commit;

  except
    FDM.FDConnection.Rollback;
    raise;

  end;
end;

procedure TClienteService.ExcluirCliente(ACliente: TCliente);
begin
  FDM.FDConnection.StartTransaction;

  try
    FRepository.ExcluirCliente(ACliente);
    FDM.FDConnection.Commit;

  except
    FDM.FDConnection.Rollback;
    raise;

  end;
end;


end.
