unit untClienteRepository;

interface

uses
  FireDAC.Comp.Client,

untCliente, untDMConexao;

type
  TClienteRepository = class

    private
     FDM: TDMConexao;

    public
     constructor Create(ADM: TDMConexao);

     procedure InserirCliente(ACliente : TCliente);
     procedure AtualizarCliente(ACliente: TCliente);
     procedure ExcluirCliente(ACliente: TCliente);

  end;
implementation

constructor TClienteRepository.Create(ADM: TDMConexao);


begin

FDM := ADM;

end;

procedure TClienteRepository.InserirCliente(ACliente: TCliente);

var
Qry : TFDQuery;

begin

Qry := DMConexao.qryCRUD;

Qry.SQL.Text := 'INSERT INTO CLIENTES (NOME, CPF) VALUES (:NOME, :CPF)';
Qry.ParamByName('NOME').AsString := ACliente.Nome;
Qry.ParamByName('CPF').AsString := ACliente.CPF;
Qry.ExecSQL;

DMConexao.qryClientes.Close;
DMConexao.qryClientes.Open;

end;

procedure TClienteRepository.AtualizarCliente(ACliente: TCliente);

var
Qry : TFDQuery;

begin

Qry := DMConexao.qryCRUD;

Qry.SQL.Text := 'UPDATE CLIENTES SET NOME = :NOME, CPF = :CPF WHERE ID = :ID';
Qry.ParamByName('ID').AsInteger := ACliente.Id;
Qry.ParamByName('NOME').AsString := ACliente.Nome;
Qry.ParamByName('CPF').AsString := ACliente.CPF;
Qry.ExecSQL;

DMConexao.qryClientes.Close;
DMConexao.qryClientes.Open;
end;

procedure TClienteRepository.ExcluirCliente(ACliente: TCliente);

var
Qry : TFDQuery;

begin

Qry := DMConexao.qryCRUD;
Qry.SQL.Text := 'DELETE FROM WHERE ID = :ID';
Qry.ParamByName('ID').AsInteger := ACliente.Id;
Qry.ExecSQL;

DMConexao.qryClientes.Close;
DMConexao.qryClientes.Open;

end;
end.
