object TdmConexao: TTdmConexao
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\DEV\Delphi\Estudos_Delphi\03-BancoDeDados\01-Firebir' +
        'd_FireDac_Fundamentos\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Left = 352
    Top = 208
  end
  object qryConexao: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      ''
      'FDQuery.SQL.TEXT := '#39'INSERT INTO CLIENTES(ID,NOME,CPF) '#39' +'
      #39'VALUES (:ID, :NOME, :CPF)'#39';'#11
      ''
      #11
      ''
      'FDQuery.ParamByName('#39'ID'#39').AsInteger := 3;'#11
      ''
      'FDQuery.ParamByName('#39'NOME'#39').AsString := '#39'Belmiro'#39';'
      'FDQuery.ParamByName('#39'CPF'#39').AsString := '#39'63663663666'#39';'
      'FDQuery.ExecSQL;'#11
      '')
    Left = 504
    Top = 208
  end
end
