unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  pngimage, jpeg, RxGIF,
  Dialogs, Menus, ExtCtrls, ComCtrls, StdCtrls, registry, RxCombos, XPMan,
  ExtDlgs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Shellapi, ThreadCheckNewVersion, ThreadTransparentWindowShowHide;

type
  TFormMain = class(TForm)
    MM1: TMainMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    PanelAddNewWindow: TPanel;
    Panel3: TPanel;
    ButtonStartWindowCreate: TButton;
    ButtonSaveNewWindow: TButton;
    Label1: TLabel;
    EditImagePath: TEdit;
    ButtonImagePath: TButton;
    Label2: TLabel;
    Label3: TLabel;
    MemoMessage: TMemo;
    Label4: TLabel;
    EditLeft: TEdit;
    EditTop: TEdit;
    UpDownTextPosLeft: TUpDown;
    UpDownTextPosRight: TUpDown;
    Label5: TLabel;
    EditWindowName: TEdit;
    ButtonWindowShow: TButton;
    ButtonWindowHide: TButton;
    ButtonWindowEdit: TButton;
    ListBoxForms: TListBox;
    CCBNewWindow: TColorComboBox;
    Label13: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EditTextSize: TEdit;
    FontComboBox1: TFontComboBox;
    UpDown1: TUpDown;
    Label6: TLabel;
    XPM: TXPManifest;
    TI1: TTrayIcon;
    PMTray: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    EditStackWithWindow: TEdit;
    CBOnOffStackWithWindow: TCheckBox;
    Label10: TLabel;
    OD1: TOpenDialog;
    CBOnOffMove: TCheckBox;
    Label11: TLabel;
    HTTP: TIdHTTP;
    Timer: TTimer;
    N7: TMenuItem;
    LabelIssetNewVirsion: TLabel;
    CBShowWindow: TCheckBox;
    TBTimeShowHide: TTrackBar;
    LabelHowMatchTime: TLabel;
    procedure ButtonStartWindowCreateClick(Sender: TObject);
    procedure ButtonImagePathClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ButtonSaveNewWindowClick(Sender: TObject);
    procedure ListBoxFormsClick(Sender: TObject);
    procedure ButtonWindowShowClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ButtonWindowHideClick(Sender: TObject);
    procedure ButtonWindowEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure TI1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure CBOnOffStackWithWindowClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure LabelIssetNewVirsionClick(Sender: TObject);
    procedure CBOnOffMoveClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure TBTimeShowHideChange(Sender: TObject);
  private
    Thread1: CheckNewVersion;
    { Private declarations }
    procedure SaveProgPosition;
    procedure LoadProgPosition;
  public
    { Public declarations }
  end;

type
  TMyForm = class(TForm)
    Fimg: TImage;
    Mlbl: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Setfp(const Value: TfileName);
    procedure Dvigalka(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MyHide;
    procedure MyShow;
  private
    Thread2: TransparentWindowShowHide;
  public
    constructor Create(AOwner: TComponent); override;
    procedure afterconstruction; override;
    property fp: TfileName write Setfp;
  end;

const
  Sleeper = 10;

var
  FormMain: TFormMain;
  FormsIndex: Integer;
  GoShowHide: THandle;
  EditedAction, KeyClose, IsAShow: Boolean;
  DinamicForms: array [1 .. 10] of TMyForm;
  DinamicFormsImagPath: array [1 .. 10] of string;
  DinamicFormsMessage: array [1 .. 10] of string;
  DinamicFormsLeftPos: array [1 .. 10] of string;
  DinamicFormsTopPos: array [1 .. 10] of string;
  DinamicFormsMessageColor: array [1 .. 10] of TColor;
  DinamicFormsMessageSize: array [1 .. 10] of string;
  DinamicFormsMessageFont: array [1 .. 10] of string;

implementation

uses UnitDinamic, UnitAbout;
{$R *.dfm}

{ ------------------- Сохранение/Восстановление позиции begin ------------------ }
procedure TFormMain.SaveProgPosition;
var
  FIniFile: TRegIniFile;
begin
  FIniFile := TRegIniFile.Create('sc2tv_informer_v2'); // Инициализирую реестр
  FIniFile.OpenKey('sc2tv_informer_v2', true); // Открываю раздел
  FIniFile.OpenKey('sc2tv_informer_v2-PositionMain', true);
  // Открываю ещё один раздел
  if WindowState = wsNormal then
  begin
    FIniFile.WriteInteger('Option', 'Left', Left);
    FIniFile.WriteInteger('Option', 'Top', Top);
  end;
  FIniFile.WriteInteger('Option', 'WinState', Integer(WindowState));
  FIniFile.Free;
end;

procedure TFormMain.LabelIssetNewVirsionClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar(
      'http://forum.sc2tv.ru/showthread.php/8336-SC2TV-Informer-v2'), nil, nil,
    SW_SHOW);
end;

procedure TFormMain.LoadProgPosition;
var
  FIniFile: TRegIniFile;
begin
  FIniFile := TRegIniFile.Create('sc2tv_informer_v2');
  FIniFile.OpenKey('sc2tv_informer_v2', true);
  FIniFile.OpenKey('sc2tv_informer_v2-PositionMain', true);
  Left := FIniFile.ReadInteger('Option', 'Left', 100);
  Top := FIniFile.ReadInteger('Option', 'Top', 100);
  WindowState := TWindowState(FIniFile.ReadInteger('Option', 'WinState', 2));
  FIniFile.Free;
end;

{ ------------------- Сохранение/Восстановление позиции end-- ------------------ }

procedure TFormMain.TBTimeShowHideChange(Sender: TObject);
begin
  TBTimeShowHide.Hint := IntToStr(TBTimeShowHide.Position);
  LabelHowMatchTime.Caption:= '(' + IntToStr(TBTimeShowHide.Position) + ' сек.)';
end;

procedure TFormMain.TI1DblClick(Sender: TObject);
begin
  if FormMain.Showing then
    Hide
  else
    Show;
end;

{
  Высота главного окна - 275
  Высота панельки - 20
}
procedure TFormMain.TimerTimer(Sender: TObject);
var
  verkaOnServer: string;
begin
  Timer.Enabled := false;
  Thread1 := CheckNewVersion.Create(true);
  Thread1.FreeOnTerminate := true;
  Thread1.Priority := tplower;
  Thread1.Resume;
end;

procedure TFormMain.ListBoxFormsClick(Sender: TObject);
begin
  if (ListBoxForms.ItemIndex > -1) then
  begin
    ButtonWindowShow.Enabled := true;
    ButtonWindowHide.Enabled := true;
    ButtonWindowEdit.Enabled := true;
  end
  else
  begin
    ButtonWindowShow.Enabled := false;
    ButtonWindowHide.Enabled := false;
    ButtonWindowEdit.Enabled := false;
  end;
end;

procedure TFormMain.N1Click(Sender: TObject);
begin
  Hide;
end;

procedure TFormMain.N3Click(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.N4Click(Sender: TObject);
begin
  if FormMain.Showing then
    Hide
  else
    Show;
end;

constructor TMyForm.Create(AOwner: TComponent);
begin
  DinamicForms[FormsIndex].OnCreate := FormCreate;
  Self.Tag := FormsIndex;
  inherited Create(AOwner);
end;

procedure TMyForm.FormCreate(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_HWNDPARENT, GetDesktopWindow);
  SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE);
  IsAShow:= true;
  GoShowHide:= Handle;
  Thread2 := TransparentWindowShowHide.Create(true);
  Thread2.FreeOnTerminate := true;
  Thread2.Priority := tplower;
  Thread2.Resume;
end;

procedure TMyForm.afterconstruction;
begin
  inherited afterconstruction;
  // Картинка
  Self.Fimg := TImage.Create(Self);
  Self.Fimg.Parent := Self;
  Self.Fimg.OnMouseDown := Dvigalka;
  Self.Fimg.AutoSize := true;
  Self.Fimg.Cursor:= crSizeAll;
  // Надпись
  Self.Mlbl := TLabel.Create(Self);
  Self.Mlbl.Parent := Self;
  Self.Mlbl.OnMouseDown := Dvigalka;
  Self.Mlbl.Cursor := crSizeAll;
  Self.Mlbl.WordWrap := true;
  Self.Mlbl.AutoSize := false;
  Self.Mlbl.Height:= Self.Height;
  Self.Mlbl.Width:= Self.Width;
  Self.Mlbl.Left := StrToInt(FormMain.EditLeft.Text);
  Self.Mlbl.Top := StrToInt(FormMain.EditTop.Text);
  Self.Mlbl.Caption := FormMain.MemoMessage.Text;
  Self.Mlbl.Transparent := true;
  Self.Mlbl.Font.Color := FormMain.CCBNewWindow.ColorValue;
  Self.Mlbl.Font.Size := StrToInt(FormMain.EditTextSize.Text);
end;

procedure TMyForm.Setfp(const Value: TfileName);
begin
  Self.Fimg.Picture.LoadFromFile(Value);
  Self.Height := Self.Fimg.Height;
  Self.Width := Self.Fimg.Width;
end;

procedure TMyForm.Dvigalka(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_dragmove = $F012;
begin
  releasecapture;
  if FormMain.CBOnOffMove.Checked <> true then
    Perform(wm_syscommand, sc_dragmove, 0);
end;

procedure TMyForm.MyHide;
begin
  GoShowHide:= Handle;
  IsAShow:= false;
  Thread2 := TransparentWindowShowHide.Create(true);
  Thread2.FreeOnTerminate := true;
  Thread2.Priority := tplower;
  Thread2.Resume;
end;

procedure TMyForm.MyShow;
begin
  GoShowHide:= Handle;
  IsAShow:= true;
  Thread2 := TransparentWindowShowHide.Create(true);
  Thread2.FreeOnTerminate := true;
  Thread2.Priority := tplower;
  Thread2.Resume;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  if FormDinamic.Showing then
    FormDinamic.Hide
  else
    FormDinamic.Show;
end;

procedure TFormMain.ButtonImagePathClick(Sender: TObject);
begin
  if OD1.Execute then
  begin
    EditImagePath.Text := OD1.FileName;
  end;
end;

procedure TFormMain.ButtonSaveNewWindowClick(Sender: TObject);
var
  GeneralImage: TImage;
  GeneralText: TLabel;
  i: Integer;
begin
  if (Length(EditWindowName.Text) > 0) AND (Length(EditImagePath.Text) > 0) then
  begin
    if (EditedAction = true) then
    begin
      DinamicForms[ListBoxForms.ItemIndex + 1].Free;
      FormsIndex := ListBoxForms.ItemIndex + 1;
      ListBoxForms.Items.Strings[ListBoxForms.ItemIndex] := EditWindowName.Text;
    end
    else
    begin
      FormsIndex := ListBoxForms.Items.Count + 1;
    end;
    // форма
    DinamicForms[FormsIndex] := TMyForm.CreateNew(Self);
    DinamicForms[FormsIndex].FormCreate(DinamicForms[FormsIndex]);
    DinamicForms[FormsIndex].BorderStyle := bsNone;
    DinamicForms[FormsIndex].Caption := EditWindowName.Text;
    DinamicForms[FormsIndex].Tag := FormsIndex;
    DinamicForms[FormsIndex].fp := EditImagePath.Text;
    DinamicForms[FormsIndex].AlphaBlend := true;
    // заполняем второстепенные массивы
    DinamicFormsImagPath[FormsIndex] := EditImagePath.Text;
    DinamicFormsMessage[FormsIndex] := MemoMessage.Text;
    DinamicFormsLeftPos[FormsIndex] := EditLeft.Text;
    DinamicFormsTopPos[FormsIndex] := EditTop.Text;
    DinamicFormsMessageColor[FormsIndex] := CCBNewWindow.ColorValue;
    DinamicFormsMessageSize[FormsIndex] := EditTextSize.Text;
    DinamicFormsMessageFont[FormsIndex] := 'Tahoma';
    // разное
    if (EditedAction <> true) then
      ListBoxForms.Items.Add(EditWindowName.Text);
    ButtonStartWindowCreate.Caption := 'Начать создание';
    ButtonSaveNewWindow.Enabled := false;
    PanelAddNewWindow.Visible := false;
    PageControl1.TabIndex := 0;
    EditWindowName.Text := '';
    EditImagePath.Text := '';
    MemoMessage.Text := '';
    EditLeft.Text := '0';
    EditTop.Text := '0';
    DinamicForms[FormsIndex].MyShow;
    DinamicForms[FormsIndex].Hide;
  end
  else
  begin
    ShowMessage('Заполните необходимые поля!');
  end;
  if (EditedAction) then
  begin
    PageControl1.TabIndex := 0;
  end;
end;

procedure TFormMain.ButtonStartWindowCreateClick(Sender: TObject);
begin
  if (PanelAddNewWindow.Visible = false) AND (ListBoxForms.Count < 10) then
  begin
    PanelAddNewWindow.Visible := true;
    ButtonSaveNewWindow.Enabled := true;
    ButtonStartWindowCreate.Caption := 'Отмена';
  end
  else if (PanelAddNewWindow.Enabled = true) AND (ListBoxForms.Count < 10) then
  begin
    PanelAddNewWindow.Visible := false;
    ButtonSaveNewWindow.Enabled := false;
    ButtonStartWindowCreate.Caption := 'Начать создание';
    EditWindowName.Text := '';
    EditImagePath.Text := '';
    MemoMessage.Lines.Text := '';
    EditLeft.Text := '0';
    EditTop.Text := '0';
  end
  else
  begin
    ShowMessage('А не дофига ли у тебя уже окон?');
  end;
end;

procedure TFormMain.ButtonWindowEditClick(Sender: TObject);
begin
  if (ListBoxForms.ItemIndex > -1) then
  begin
    FormsIndex := ListBoxForms.ItemIndex + 1;
    EditedAction := true;
    ButtonSaveNewWindow.Enabled := true;
    ButtonStartWindowCreate.Caption := 'Отмена';
    ButtonSaveNewWindow.Enabled := true;
    PanelAddNewWindow.Visible := true;
    CCBNewWindow.ColorValue := DinamicFormsMessageColor[FormsIndex];
    EditWindowName.Text := DinamicForms[FormsIndex].Caption;
    EditImagePath.Text := DinamicFormsImagPath[FormsIndex];
    MemoMessage.Lines.Text := DinamicFormsMessage[FormsIndex];
    EditLeft.Text := DinamicFormsLeftPos[FormsIndex];
    EditTop.Text := DinamicFormsTopPos[FormsIndex];
    PageControl1.TabIndex := 1;
  end
  else
  begin
    ShowMessage('А не дофига ли у тебя уже окон?');
  end;
end;

procedure TFormMain.ButtonWindowHideClick(Sender: TObject);
begin
  if (ListBoxForms.ItemIndex > -1) then
  begin
    if (CBShowWindow.Checked <> true) then
    begin
      //ShowMessage(IntToStr(ListBoxForms.ItemIndex + 1));
      DinamicForms[ListBoxForms.ItemIndex + 1].AlphaBlendValue := 0;
    end
    else
    begin
      DinamicForms[ListBoxForms.ItemIndex + 1].MyHide;
    end;
  end;
end;

procedure TFormMain.ButtonWindowShowClick(Sender: TObject);
begin
  if (ListBoxForms.ItemIndex > -1) then
  begin
    if (CBShowWindow.Checked <> true) then
    begin
      //ShowMessage(IntToStr(ListBoxForms.ItemIndex + 1));
      DinamicForms[ListBoxForms.ItemIndex + 1].AlphaBlendValue := 255;
    end
    else
    begin
      DinamicForms[ListBoxForms.ItemIndex + 1].MyShow;
    end;
  end;
end;

procedure TFormMain.CBOnOffMoveClick(Sender: TObject);
begin
  N7.Checked := CBOnOffMove.Checked;
end;

procedure TFormMain.CBOnOffStackWithWindowClick(Sender: TObject);
var
  OtherWindow: THandle;
  wRect: TRect;
begin
  if (Length(EditStackWithWindow.Text) > 1) AND
    (CBOnOffStackWithWindow.Checked) then
  begin
    OtherWindow := FindWindow(nil, PChar(EditStackWithWindow.Text));
    if (OtherWindow <> 0) then
    begin
      ShowMessage('cool!');
      GetWindowRect(OtherWindow, wRect);
      ShowMessage('wRect.left = ' + IntToStr(wRect.Left));
    end;
  end;
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if KeyClose = true then
  begin
    SaveProgPosition;
    Timer.Enabled := false;
  end
  else
    Hide;
  CanClose := KeyClose;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  EditedAction := false;
  KeyClose := false;
  Height := 275;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  LoadProgPosition;
end;

procedure TFormMain.N6Click(Sender: TObject);
begin
  KeyClose := true;
  Close;
end;

procedure TFormMain.N7Click(Sender: TObject);
begin
  CBOnOffMove.Checked := N7.Checked;
end;

end.
