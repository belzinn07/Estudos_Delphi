object DMConexao: TDMConexao
  OnCreate = DataModuleCreate
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
      'CharacterSet=UTF8'
      'DriverID=FB')
    Left = 400
    Top = 288
  end
  object qryClientes: TFDQuery
    Connection = FDConnection
    Transaction = FDTransaction
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT ID, NOME FROM CLIENTES')
    Left = 632
    Top = 280
  end
  object FDTransaction: TFDTransaction
    Connection = FDConnection
    Left = 520
    Top = 288
  end
  object qryCRUD: TFDQuery
    Connection = FDConnection
    Transaction = FDTransaction
    Left = 752
    Top = 288
  end
end
