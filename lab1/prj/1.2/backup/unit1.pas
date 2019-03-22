{
        Ця программа, була розроблена, для знаходження результату формули
        з трьома невідомими, які користувач вводить у відповідні поля
        =================================================================
        Версія ПЗ: Alpha 0.1
        **********************************************************************
}
unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus, Math, validator_1;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var x,y,z,Q:real;
  c,c1,c2:string;
begin
 c:=Edit1.Caption;
 c1:=Edit2.Caption;
 c2:=Edit3.Caption;
 if (AntiNill(c) = true) or (AntiNill(c1) = true) or (AntiNill(c2) = true) then
 else
 begin
 x := StrToFloat(Edit1.Caption);
 y := StrToFloat(Edit2.Caption);
 z := StrToFloat(Edit3.Caption);
 // Встановлення обмежень на допустиме значення х
 if (x <= 0) or (z <= 0)  then
 ShowMessage('Помилка! Введене число не відповідає вимогам!'#10'Х <0 або Z<0') //Введене користувачем число не відповідає вимогам
 else
 begin
 if AntiMin(y) = true then
 begin
 y:= y*(-1);
 Q := (sqrt(1+x)/(3*Pi))+cos(x)-power(sqrt(power(z,1/x))+abs(power(x,1/(y*(-1)))-z)/6,1/abs(x-(y*(-1))-z));
 Memo1.Lines.Add(FloatToStr(Q));
 end
 else
 begin
  //Выполнение задачи
 Q := (sqrt(1+x)/(3*Pi))+cos(x)-power(sqrt(power(z,1/x))+abs(power(x,1/y)-z)/6,1/abs(x-y-z));
 Memo1.Lines.Add(FloatToStr(Q));
 end;
 end;
 end;
 end; // КОНЕЦ.

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  AntiDot(Key);
  AntiChar(Key);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);
begin
  AntiDot(Key);
  AntiChar(Key);
end;
procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: char);
begin
 AntiDot(Key);
 AntiChar(Key);
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
 ShowMessage('Коротко про роботу програми:'#10'Існують три поля введення: x,y,z'#10'Х та Z не повинні бути від''ємними. ');
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
    ShowMessage('Реліз не для продажу!'#10'(с) Єремеєв М.О.'#10'побачете якщо хтось продає - дудосьте');
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  ShowMessage('Навчальний заклад: ЦНТУ'#10'https://kntu.ua');

end;


procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.

