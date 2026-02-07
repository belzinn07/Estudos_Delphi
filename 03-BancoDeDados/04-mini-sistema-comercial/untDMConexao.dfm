object DMConexao: TDMConexao
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Left = 368
    Top = 376
  end
  object qryClientes: TFDQuery
    Connection = FDConnection
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
end
