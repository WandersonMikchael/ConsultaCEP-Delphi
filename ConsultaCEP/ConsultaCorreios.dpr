program ConsultaCorreios;

{$R *.dres}

uses
  Vcl.Forms,
  ConsultarCorreios in 'View\ConsultarCorreios.pas' {FrmConsultaCorreios},
  ConsultaCEP in 'Model\ConsultaCEP.pas',
  Services in 'Services\Services.pas' {FrmServices},
  JsonToObject in 'Model\JsonToObject.pas',
  ConsultaCepDTO in 'Controller\ConsultaCepDTO.pas',
  Utils in 'Utils\Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmConsultaCorreios, FrmConsultaCorreios);
  Application.Run;
end.
