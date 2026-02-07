unit untDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, // Alterado para VCLUI se for Windows
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdmConexao = class(TDataModule)
    qryConexao: TFDQuery;
    FDConnection1: TFDConnection;
    procedure InserirClientes(const ANome, ACPF: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'} // Ajustado para compatibilidade VCL

{$R *.dfm}

{ TTdmConexao }

procedure TdmConexao.InserirClientes(const ANome, ACPF: String);
begin
  qryConexao.Close;
  qryConexao.SQL.Clear;

  qryConexao.SQL.Text := 'INSERT INTO CLIENTES (NOME, CPF) ' +
                         'VALUES (:pNome, :pCPF)';

  qryConexao.ParamByName('pNome').AsString := ANome;
  qryConexao.ParamByName('pCPF').AsString  := ACPF;

  qryConexao.ExecSQL;
end;

end.
