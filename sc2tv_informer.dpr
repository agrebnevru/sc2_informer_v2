program sc2tv_informer;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDinamic in 'UnitDinamic.pas' {FormDinamic},
  UnitAbout in 'UnitAbout.pas' {FormAbout},
  ThreadCheckNewVersion in 'ThreadCheckNewVersion.pas',
  ThreadTransparentWindowShowHide in 'ThreadTransparentWindowShowHide.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SC2TV Informer';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormDinamic, FormDinamic);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.Run;
end.
