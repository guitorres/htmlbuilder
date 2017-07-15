program Demo;

uses
  Forms,
  uDemo in '..\demo\uDemo.pas' {frmDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDemo, frmDemo);
  Application.Run;
end.
