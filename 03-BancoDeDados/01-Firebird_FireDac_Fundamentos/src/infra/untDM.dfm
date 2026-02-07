object dmConexao: TdmConexao
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object qryConexao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      ''
      ''
      ''
      '')
    Left = 504
    Top = 208
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\DEV\Delphi\Estudos_Delphi\02-BancoDeDados\00-databas' +
        'e\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'CharacterSet=utf8'
      'DriverID=FB')
    Connected = True
    Left = 376
    Top = 200
  end
end
