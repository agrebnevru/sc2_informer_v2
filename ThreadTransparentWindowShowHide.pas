unit ThreadTransparentWindowShowHide;

interface

uses
  Classes, Windows;

type
  TransparentWindowShowHide = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses UnitMain;

{ TransparentWindowShowHide }

procedure GoShow;
begin
  AnimateWindow(GoShowHide, (FormMain.TBTimeShowHide.Position * 1000), AW_BLEND);
end;

procedure GoHide;
begin
  AnimateWindow(GoShowHide, (FormMain.TBTimeShowHide.Position * 1000),
    AW_HIDE or AW_BLEND);
end;

procedure TransparentWindowShowHide.Execute;
begin
  { Place thread code here }
  FormMain.ButtonWindowShow.Enabled:= false;
  FormMain.ButtonWindowHide.Enabled:= false;
  if IsAShow then
    GoShow
    else
    GoHide;
  FormMain.ButtonWindowShow.Enabled:= true;
  FormMain.ButtonWindowHide.Enabled:= true;
end;

end.
