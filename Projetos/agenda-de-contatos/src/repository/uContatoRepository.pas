unit uContatoRepository;

interface

uses
  uIContatoRepository, uDMPrincipal, uContato;

type
  TContatoRepository = class(TInterfacedObject, IContatoRepository)

     private
       FDMPrincipal: TDMPrincipal;
       procedure AtualizarLista;

      public
      constructor Create(ADMPrincipal : TDMPrincipal);
      procedure ListarContatos;

      procedure Inserir(AContato: TContato);
      procedure Editar(AContato: TContato);
      procedure Excluir(AContato: TContato);
      function BuscarPorId(AId: Integer): TContato;


  end;

implementation

uses
  FireDAC.Comp.Client;

constructor TContatoRepository.Create(ADMPrincipal: TDMPrincipal);
begin

  FDMPrincipal := ADMPrincipal;

end;

procedure TContatoRepository.AtualizarLista;
begin

FDMPrincipal.qryContatos.Close;
FDMPrincipal.qryContatos.Open;

end;



procedure TContatoRepository.Inserir(AContato: TContato);

begin
   FDMPrincipal.FDTransaction.StartTransaction;

   try
    FDMPrincipal.qryCRUD.SQL.Clear;
    FDMPrincipal.qryCRUD.SQL.Text := 'INSERT INTO CONTATOS (NOME, TELEFONE) VALUES(:NOME, :TELEFONE)';

    FDMPrincipal.qryCRUD.ParamByName('NOME').AsString := AContato.Nome;
    FDMPrincipal.qryCRUD.ParamByName('TELEFONE').AsString := AContato.Telefone;
    FDMPrincipal.qryCRUD.ExecSQL;

    FDMPrincipal.FDTransaction.Commit;
    AtualizarLista;
   except
    FDMPrincipal.FDTransaction.Rollback;
    raise;

   end;

end;

procedure TContatoRepository.ListarContatos;
begin

FDMPrincipal.qryContatos.Close;
FDMPrincipal.qryContatos.SQL.Text := 'SELECT * FROM CONTATOS';
FDMPrincipal.qryContatos.Open;

end;

procedure TContatoRepository.Editar(AContato: TContato);
begin
   FDMPrincipal.FDTransaction.StartTransaction;

   try
    FDMPrincipal.qryCRUD.SQL.Clear;
    FDMPrincipal.qryCRUD.SQL.Text := 'UPDATE CONTATOS SET NOME = :NOME, TELEFONE = :TELEFONE WHERE ID = :ID';

    FDMPrincipal.qryCRUD.ParamByName('ID').AsInteger := AContato.Id;
    FDMPrincipal.qryCRUD.ParamByName('NOME').AsString := AContato.Nome;
    FDMPrincipal.qryCRUD.ParamByName('TELEFONE').AsString := AContato.Telefone;

    FDMPrincipal.qryCRUD.ExecSQL;

    FDMPrincipal.FDTransaction.Commit;
    AtualizarLista;
   except
    FDMPrincipal.FDTransaction.Rollback;
    raise;

   end;


end;


procedure TContatoRepository.Excluir(AContato: TContato);
begin

FDMPrincipal.FDTransaction.StartTransaction;

  try
    FDMPrincipal.qryCRUD.SQL.Clear;
    FDMPrincipal.qryCRUD.SQL.Text := 'DELETE FROM CONTATOS WHERE ID = :ID';

    FDMPrincipal.qryCRUD.ParamByName('ID').AsInteger := AContato.Id;
    FDMPrincipal.qryCRUD.ExecSQL;

    FDMPrincipal.FDTransaction.Commit;
    AtualizarLista;
  except
    FDMPrincipal.FDTransaction.Rollback;
    raise;

  end;

end;

function TContatoRepository.BuscarPorId(AId: Integer): TContato;
var
  Contato: TContato;
begin
  Contato := TContato.Create;

  FDMPrincipal.qryCRUD.Close;
  FDMPrincipal.qryCRUD.SQL.Text := 'SELECT * FROM CONTATOS WHERE ID = :ID';
  FDMPrincipal.qryCRUD.ParamByName('ID').AsInteger := AId;
  FDMPrincipal.qryCRUD.Open;

  if not FDMPrincipal.qryCRUD.IsEmpty then
  begin
    Contato.Id := FDMPrincipal.qryCRUD.FieldByName('ID').AsInteger;
    Contato.Nome := FDMPrincipal.qryCRUD.FieldByName('NOME').AsString;
    Contato.Telefone := FDMPrincipal.qryCRUD.FieldByName('TELEFONE').AsString;
  end;

  Result := Contato;
end;



end.
