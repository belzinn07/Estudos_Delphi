object DMPrincipal: TDMPrincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\DEV\Delphi\Estudos_Delphi\Projetos\agenda-de-contato' +
        's\database\AGENDA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Left = 480
    Top = 360
  end
  object qryContatos: TFDQuery
    Active = True
    Connection = FDConexao
    SQL.Strings = (
      'SELECT * FROM CONTATOS')
    Left = 616
    Top = 360
  end
  object qryCRUD: TFDQuery
    Connection = FDConexao
    Left = 320
    Top = 360
  end
  object FDTransaction: TFDTransaction
    Connection = FDConexao
    Left = 472
    Top = 256
  end
  object dsContatos: TDataSource
    DataSet = qryContatos
    Left = 480
    Top = 464
  end
end
