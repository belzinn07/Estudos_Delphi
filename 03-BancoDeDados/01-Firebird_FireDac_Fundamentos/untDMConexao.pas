unit untDMConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, // Alterado para VCLUI se for Windows
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TTdmConexao = class(TDataModule)
    FDConnection: TFDConnection;
    qryConexao: TFDQuery;
    procedure InserirClientes(AID: Integer; ANome, ACPF: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TdmConexao: TTdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'} // Ajustado para compatibilidade VCL

{$R *.dfm}

{ TTdmConexao }

procedure TTdmConexao.InserirClientes(AID: Integer; ANome, ACPF: String);
begin
  qryConexao.Close;
  qryConexao.SQL.Clear;

  qryConexao.SQL.Text := 'INSERT INTO CLIENTES (ID, NOME, CPF) ' +
                         'VALUES (:pID, :pNome, :pCPF)';

  qryConexao.ParamByName('pID').AsInteger := AID;
  qryConexao.ParamByName('pNome').AsString := ANome;
  qryConexao.ParamByName('pCPF').AsString  := ACPF;

  qryConexao.ExecSQL;
end;

end.
