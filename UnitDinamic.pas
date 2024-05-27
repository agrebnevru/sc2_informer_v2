unit UnitDinamic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, pngimage;

type
  TFormDinamic = class(TForm)
    ImageGeneral: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ImageGeneralMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDinamic: TFormDinamic;

implementation

{$R *.dfm}

procedure TFormDinamic.FormCreate(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_HWNDPARENT, GetDesktopWindow);
  SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0,
    SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TFormDinamic.ImageGeneralMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_dragmove = $F012;
begin
  releasecapture;
  FormDinamic.Perform(wm_syscommand, sc_dragmove, 0);
end;

end.
