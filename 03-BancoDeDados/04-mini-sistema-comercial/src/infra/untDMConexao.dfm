object DMConexao: TDMConexao
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\DEV\Delphi\Estudos_Delphi\03-BancoDeDados\00-databas' +
        'e\BANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=utf8'
      'DriverID=FB')
    Left = 368
    Top = 376
  end
  object qryClientes: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTES;')
    Left = 632
    Top = 376
  end
  object qryCRUD: TFDQuery
    Connection = FDConnection
    Left = 760
    Top = 376
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 504
    Top = 376
  end
  object dsClientes: TDataSource
    DataSet = qryClientes
    Left = 208
    Top = 128
  end
end
