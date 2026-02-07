unit untDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMConexao = class(TDataModule)
    FDConnection: TFDConnection;
    qryClientes: TFDQuery;
    FDTransaction: TFDTransaction;
    qryCRUD: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure InserirCliente(const ANome: string);
    procedure ExcluirCliente(const AId : Integer);
    procedure AtualizarCliente(const AId: Integer; ANome: string  );
    procedure Cancelar;
  end;

var
  DMConexao: TDMConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Connected := True;
  qryClientes.Open;
end;


procedure TDMConexao.InserirCliente(const ANome: string);
begin
  FDTransaction.StartTransaction;

  try
    qryCRUD.SQL.Text :=
      'INSERT INTO CLIENTES (NOME) VALUES(:NOME)';

    qryCRUD.ParamByName('Nome').AsString := ANome;
    qryCRUD.ExecSQL;

    FDTransaction.Commit;

    qryClientes.Close;
    qryClientes.Open;

  except
    FDTransaction.Rollback;
    raise;
  end;
end;

procedure TDMConexao.ExcluirCliente(const AID: Integer);
begin
  FDTransaction.StartTransaction;

  try
    qryCRUD.SQL.Text :=
      'DELETE FROM CLIENTES WHERE ID = :ID';

    qryCRUD.ParamByName('ID').AsInteger := AID;
    qryCRUD.ExecSQL;

    FDTransaction.Commit;

    qryClientes.Close;
    qryClientes.Open;

  except
    FDTransaction.Rollback;
    raise;
  end;
end;


procedure TDMConexao.AtualizarCliente(const AId: Integer; ANome: string);
begin

   FDTransaction.StartTransaction;

   try
    qryCRUD.SQL.Text :=
      'UPDATE CLIENTES SET NOME = :NOME WHERE ID = :ID';
    qryCRUD.ParamByName('NOME').AsString := ANome;
    qryCRUD.ParamByName('ID').AsInteger := AId;

    qryCRUD.ExecSQL;

    FDTransaction.Commit;

    qryClientes.Close;
    qryClientes.Open;

   except
    FDTransaction.Rollback;
    raise;

   end;

end;

procedure TDMConexao.Cancelar;
begin
  qryClientes.Cancel;
end;
end.

