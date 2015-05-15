program Sample;

uses
  Forms,
  uSample in 'uSample.pas' {frmSample};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSample, frmSample);
  Application.Run;
end.
