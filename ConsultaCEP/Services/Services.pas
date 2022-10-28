unit Services;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, IPPeerClient, REST.Client, REST.Response.Adapter, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TFrmServices = class(TForm)
    DataSource1: TDataSource;
    Response: TRESTResponse;
    memResultadoPesquisa: TFDMemTable;
    DataSetAdapter: TRESTResponseDataSetAdapter;
    Client: TRESTClient;
    Request: TRESTRequest;
    memResultadoPesquisacep: TWideStringField;
    memResultadoPesquisalogradouro: TWideStringField;
    memResultadoPesquisacomplemento: TWideStringField;
    memResultadoPesquisabairro: TWideStringField;
    memResultadoPesquisalocalidade: TWideStringField;
    memResultadoPesquisauf: TWideStringField;
    memResultadoPesquisaibge: TWideStringField;
    memResultadoPesquisagia: TWideStringField;
    memResultadoPesquisaddd: TWideStringField;
    memResultadoPesquisasiafi: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  URL_CONSULTA = 'viacep.com.br/ws/';
var
  FrmServices: TFrmServices;

implementation

{$R *.dfm}

end.
