object DM: TDM
  OldCreateOrder = False
  Height = 779
  Width = 1034
  object con: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'wktech'
    Username = 'root'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 120
    EncryptedPassword = 'ABFF90FF92FFCFFFCCFFCDFFCFFFC7FFC9FF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 192
    Top = 184
  end
  object qycliente: TUniQuery
    Connection = con
    SQL.Strings = (
      'select * from clientes')
    Left = 192
    Top = 240
    object qyclientecodigo: TLargeintField
      FieldName = 'codigo'
    end
    object qyclientenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 120
    end
    object qyclienteuf: TStringField
      FieldName = 'uf'
      Required = True
      Size = 2
    end
  end
  object qyprodutos: TUniQuery
    Connection = con
    SQL.Strings = (
      'select * from produtos'
      'where codigo like '#39'%@produto%'#39
      'or descricao like '#39'%@produto%'#39)
    Left = 192
    Top = 296
    object qyprodutoscodigo: TLargeintField
      FieldName = 'codigo'
    end
    object qyprodutosdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 150
    end
    object qyprodutosprecovenda: TFloatField
      FieldName = 'precovenda'
      Required = True
    end
  end
  object qypedidocab: TUniQuery
    Connection = con
    SQL.Strings = (
      'select * from pedidocab'
      'where pedido = :pedido')
    Left = 192
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        Value = nil
      end>
    object qypedidocabpedido: TLargeintField
      FieldName = 'pedido'
    end
    object qypedidocabdataemissao: TDateTimeField
      FieldName = 'dataemissao'
      Required = True
    end
    object qypedidocabcliente: TLargeintField
      FieldName = 'cliente'
    end
    object qypedidocabtotal: TFloatField
      FieldName = 'total'
      Required = True
    end
  end
  object qypedidoitens: TUniQuery
    Connection = con
    SQL.Strings = (
      'select *,'
      
        '(select descricao from produtos where codigo = produto) as DescP' +
        'roduto'
      ' from pedidoitens'
      'where pedido = :pedido')
    Left = 192
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        Value = nil
      end>
    object qypedidoitenscodigo: TLargeintField
      FieldName = 'codigo'
    end
    object qypedidoitenspedido: TLargeintField
      FieldName = 'pedido'
      Required = True
    end
    object qypedidoitensproduto: TLargeintField
      FieldName = 'produto'
      Required = True
    end
    object qypedidoitensquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object qypedidoitensvlrunitario: TFloatField
      FieldName = 'vlrunitario'
      Required = True
    end
    object qypedidoitensvlrtotal: TFloatField
      FieldName = 'vlrtotal'
      Required = True
    end
    object qypedidoitensDescProduto: TStringField
      FieldName = 'DescProduto'
      ReadOnly = True
      Size = 150
    end
  end
  object qymaxcodigo: TUniQuery
    Connection = con
    SQL.Strings = (
      'select max(pedido) as maxcodigo from pedidocab')
    Left = 264
    Top = 360
    object qymaxcodigomaxcodigo: TLargeintField
      FieldName = 'maxcodigo'
      ReadOnly = True
    end
  end
end
