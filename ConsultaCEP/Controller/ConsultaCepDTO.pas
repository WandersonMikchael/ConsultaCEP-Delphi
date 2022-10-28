unit ConsultaCepDTO;

interface

uses
  Data.DB, System.SysUtils, Data.Win.ADODB, Datasnap.DBClient, ConsultaCEP;

  type
  TConsultaCepDTO = Class
  private
    FConsultaCEP: TConsultaCEP;
    FResultadoPesquisaDTO: TClientDataSet;
    procedure SetConsultaCEP(const Value: TConsultaCEP);
  public

    procedure GeraRequisicao(Cep:String);
    property ConsultaCEP : TConsultaCEP read FConsultaCEP write SetConsultaCEP;
    property ResultadoPesquisaDTO: TClientDataSet read FResultadoPesquisaDTO write FResultadoPesquisaDTO;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TConsultaCepDTO }

constructor TConsultaCepDTO.Create;
begin
  ResultadoPesquisaDTO :=  TClientDataSet.Create(nil);
  ResultadoPesquisaDTO.Close;
  ResultadoPesquisaDTO.FieldDefs.Clear;
  ResultadoPesquisaDTO.FieldDefs.Add('logradouro',ftString,50);
  ResultadoPesquisaDTO.FieldDefs.Add('complemento',ftString,50);
  ResultadoPesquisaDTO.FieldDefs.Add('bairro',ftString,50);
  ResultadoPesquisaDTO.FieldDefs.Add('localidade',ftString,50);
  ResultadoPesquisaDTO.FieldDefs.Add('uf',ftString,2);
  ResultadoPesquisaDTO.FieldDefs.Add('ibge',ftString,50);
  ResultadoPesquisaDTO.CreateDataSet;

  ConsultaCEP := TConsultaCEP.Create;
  inherited Create;
end;

destructor TConsultaCepDTO.Destroy;
begin
  ResultadoPesquisaDTO.Free;
  ConsultaCEP.Free;
  inherited Destroy;
end;

procedure TConsultaCepDTO.GeraRequisicao(Cep: String);
begin
  if not ConsultaCEP.GeraRequisicao(Cep) then
    raise Exception.Create('Endereço não encontrado!');

  if ResultadoPesquisaDTO.Active = False then
        ResultadoPesquisaDTO.Active := True;
  ResultadoPesquisaDTO.Data := ConsultaCEP.ResultadoPesquisa.Data;
end;

procedure TConsultaCepDTO.SetConsultaCEP(const Value: TConsultaCEP);
begin
  FConsultaCEP := Value;
end;

end.
