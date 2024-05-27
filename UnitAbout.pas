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
    Nevazhno: array [0 .. 47] of byte; // �������� ��� 48 ����
    Minor, Major, Build, Release: word; // � ��� ������
  end;
var
  s: TResourceStream;
  v: TVerInfo;
begin
  result := '';
  try
    s := TResourceStream.Create(HInstance, '#1', RT_VERSION); // ������ ������
    if s.Size > 0 then
    begin
      s.Read(v, SizeOf(v)); // ������ ������ ��� �����
      result := IntToStr(v.Major) + '.' + IntToStr(v.Minor) + '.' +
      // ��� � ������...
        IntToStr(v.Release) + '.' + IntToStr(v.Build);
    end;
    s.Free;
  except
    ;
  end;
end;

end.
