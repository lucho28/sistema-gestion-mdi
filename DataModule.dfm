object DataModule8: TDataModule8
  OldCreateOrder = False
  Height = 559
  Width = 844
  object SistemaConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=prueba')
    Connected = True
    LoginPrompt = False
    Left = 51
    Top = 10
  end
  object ClienteTable: TFDQuery
    Connection = SistemaConnection
    SQL.Strings = (
      'SELECT * FROM basenueva.cliente')
    Left = 240
    Top = 117
  end
  object FDQueryClientes: TFDQuery
    Active = True
    Connection = SistemaConnection
    SQL.Strings = (
      'select * from cliente')
    Left = 40
    Top = 104
  end
  object ClientDataSetClientes: TClientDataSet
    Aggregates = <>
    MasterSource = DataSourceClientes
    PacketRecords = 0
    Params = <>
    Left = 168
    Top = 105
  end
  object DataSourceClientes: TDataSource
    DataSet = FDQueryClientes
    Left = 98
    Top = 116
  end
  object ArticuloTable: TFDQuery
    MasterSource = DataSourceArticulos
    Connection = SistemaConnection
    SQL.Strings = (
      'SELECT * FROM basenueva.articulo')
    Left = 257
    Top = 215
  end
  object DataSourceArticulos: TDataSource
    DataSet = FDQueryArticulos
    Left = 105
    Top = 224
  end
  object ClientDataSetArticulos: TClientDataSet
    Aggregates = <>
    MasterSource = DataSourceArticulos
    PacketRecords = 0
    Params = <>
    Left = 179
    Top = 195
  end
  object FDQueryArticulos: TFDQuery
    Active = True
    MasterSource = DataSourceClientes
    Connection = SistemaConnection
    SQL.Strings = (
      'select * from articulo')
    Left = 38
    Top = 203
  end
end
