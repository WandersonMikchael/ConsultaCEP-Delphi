object FrmServices: TFrmServices
  Left = 0
  Top = 0
  Caption = 'FrmServices'
  ClientHeight = 201
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DataSource1: TDataSource
    DataSet = memResultadoPesquisa
    Left = 184
    Top = 72
  end
  object Response: TRESTResponse
    ContentType = 'application/json'
    Left = 40
    Top = 16
  end
  object memResultadoPesquisa: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ddd'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'siafi'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 136
    Top = 16
    object memResultadoPesquisacep: TWideStringField
      FieldName = 'cep'
      Size = 255
    end
    object memResultadoPesquisalogradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 255
    end
    object memResultadoPesquisacomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object memResultadoPesquisabairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object memResultadoPesquisalocalidade: TWideStringField
      FieldName = 'localidade'
      Size = 255
    end
    object memResultadoPesquisauf: TWideStringField
      FieldName = 'uf'
      Size = 255
    end
    object memResultadoPesquisaibge: TWideStringField
      FieldName = 'ibge'
      Size = 255
    end
    object memResultadoPesquisagia: TWideStringField
      FieldName = 'gia'
      Size = 255
    end
    object memResultadoPesquisaddd: TWideStringField
      FieldName = 'ddd'
      Size = 255
    end
    object memResultadoPesquisasiafi: TWideStringField
      FieldName = 'siafi'
      Size = 255
    end
  end
  object DataSetAdapter: TRESTResponseDataSetAdapter
    Active = True
    Dataset = memResultadoPesquisa
    FieldDefs = <>
    Response = Response
    Left = 35
    Top = 128
  end
  object Client: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://viacep.com.br/ws/01001000/json/'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 32
    Top = 72
  end
  object Request: TRESTRequest
    Client = Client
    Params = <>
    Response = Response
    SynchronizedEvents = False
    Left = 107
    Top = 104
  end
end
