unit UnitAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormAbout = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    BB1CloseAboutForm: TBitBtn;
    Label1: TLabel;
    LabelProgVer: TLabel;
    function GetVerProg: string;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

{$R *.dfm}

procedure TFormAbout.FormShow(Sender: TObject);
begin
  LabelProgVer.Caption := GetVerProg;
end;

function TFormAbout.GetVerProg: string;
type
  TVerInfo = packed record
    Nevazhno: array [0 .. 47] of byte; // ненужные нам 48 байт
    Minor, Major, Build, Release: word; // а тут версия
  end;
var
  s: TResourceStream;
  v: TVerInfo;
begin
  result := '';
  try
    s := TResourceStream.Create(HInstance, '#1', RT_VERSION); // достаём ресурс
    if s.Size > 0 then
    begin
      s.Read(v, SizeOf(v)); // читаем нужные нам байты
      result := IntToStr(v.Major) + '.' + IntToStr(v.Minor) + '.' +
      // вот и версия...
        IntToStr(v.Release) + '.' + IntToStr(v.Build);
    end;
    s.Free;
  except
    ;
  end;
end;

end.
