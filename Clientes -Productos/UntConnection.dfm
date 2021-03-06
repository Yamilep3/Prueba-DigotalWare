object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 371
  Width = 544
  object fdtClientes: TFDTable
    BeforeEdit = fdtClientesBeforeEdit
    OnNewRecord = fdtClientesNewRecord
    IndexFieldNames = 'id'
    Connection = fdcConnection
    UpdateOptions.UpdateTableName = 'clientes'
    TableName = 'clientes'
    Left = 64
    Top = 128
    object fdtClientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdtClientesnombre: TStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Required = True
      Size = 50
    end
    object fdtClientesdireccion: TStringField
      FieldName = 'direccion'
      Origin = 'direccion'
      Required = True
      Size = 50
    end
    object fdtClientescreado: TSQLTimeStampField
      FieldName = 'creado'
      Origin = 'creado'
    end
    object fdtClientesactualizado: TSQLTimeStampField
      FieldName = 'actualizado'
      Origin = 'actualizado'
    end
  end
  object dtsClientes: TDataSource
    DataSet = fdtClientes
    Left = 120
    Top = 136
  end
  object fdtProductos: TFDTable
    IndexFieldNames = 'id'
    Connection = fdcConnection
    UpdateOptions.UpdateTableName = 'producto'
    TableName = 'producto'
    Left = 272
    Top = 56
    object fdtProductosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdtProductosnombre: TStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Required = True
      Size = 50
    end
    object fdtProductosPrecioVenta: TFloatField
      FieldName = 'PrecioVenta'
      Origin = 'PrecioVenta'
      Required = True
    end
  end
  object fdcConnection: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'Server=localhost'
      'Database=pedidos'
      'Password=sqlserver'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 56
  end
  object DtsProducto: TDataSource
    DataSet = fdtProductos
    Left = 336
    Top = 56
  end
  object fdtmaesfactura: TFDTable
    IndexFieldNames = 'numerofact'
    Connection = fdcConnection
    UpdateOptions.UpdateTableName = 'maesFactura'
    TableName = 'maesFactura'
    Left = 56
    Top = 232
    object fdtmaesfacturanumerofact: TFDAutoIncField
      FieldName = 'numerofact'
      Origin = 'numerofact'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdtmaesfacturafecha: TSQLTimeStampField
      FieldName = 'fecha'
      Origin = 'fecha'
      Required = True
    end
    object fdtmaesfacturaidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object fdtmaesfacturatotal: TFMTBCDField
      FieldName = 'total'
      Origin = 'total'
      Precision = 18
      Size = 0
    end
  end
  object dtsmaesfactura: TDataSource
    DataSet = fdtmaesfactura
    Left = 144
    Top = 232
  end
  object fdtdetafactura: TFDTable
    IndexFieldNames = 'iddetalle'
    Connection = fdcConnection
    UpdateOptions.UpdateTableName = 'detaFactura'
    TableName = 'detaFactura'
    Left = 296
    Top = 240
    object fdtdetafacturaiddetalle: TFDAutoIncField
      FieldName = 'iddetalle'
      Origin = 'iddetalle'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdtdetafacturaidnumerofact: TIntegerField
      FieldName = 'idnumerofact'
      Origin = 'idnumerofact'
      Required = True
    end
    object fdtdetafacturaidproducto: TIntegerField
      FieldName = 'idproducto'
      Origin = 'idproducto'
      Required = True
    end
    object fdtdetafacturacantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'cantidad'
      Required = True
    end
    object fdtdetafacturavalor: TFMTBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 18
      Size = 0
    end
  end
  object dtsdetafactura: TDataSource
    DataSet = fdtdetafactura
    Left = 376
    Top = 248
  end
end
