unit Utils;

interface

uses
  Vcl.Controls, Data.DB, System.SysUtils, Vcl.DBCtrls, Classes, Vcl.Forms, Vcl.StdCtrls;

  type
  TUtils = class

  class procedure LimparCampos(Control : TWinControl);
  class function ValidarCep(const CEP: string): Boolean;
  end;

implementation

class procedure TUtils.LimparCampos(Control : TWinControl);
var
  i : Integer;
begin
  for i := 0 to Control.ControlCount -1 do
  begin
    if Control.Controls[i] is TEdit then
      (Control.Controls[i] as TEdit).Clear;
  end;
end;

class function TUtils.ValidarCEP(const CEP: string): Boolean;
var
  I: integer;
  CEP1: string;
begin
  for I := 1 to Length(CEP) do
    if CEP[I] in ['0'..'9'] then
      CEP1 := CEP1 + CEP[I];
  if Length(CEP1) <> 8 then
    Result := False
  else
    Result := True;
end;

end.
