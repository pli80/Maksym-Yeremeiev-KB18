unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, ActnList, Menus, Math, DateUtils, validator_2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  Width:=362;
end;

procedure TForm1.Memo1Enter(Sender: TObject);
begin

end;


procedure TForm1.MenuItem1Click(Sender: TObject);
begin
   Width:=632;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Memo1.Lines.Text:='(с) Єремеєв Максим';
  Memo1.Lines.Add('Програма створена для ознайомлення'#10'Побачете якщо хтось продає - задудосьте)');

end;



procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  Memo1.Lines.Text:='Навчальний заклад: ЦНТУ';
  Memo1.Lines.Add('https://kntu.ua');
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  //Memo1.Lines.Add('Вся введена інформація в поле буде видалена!'#10' Будь-ласка введіть "Так" якщо згодні');
  //if (pos('Так', Memo1.Lines.Text)<>0)  then
  // begin
  Memo1.Lines.Text:='';
  //ShowMessage('Поле очищено! Сподіваюсь нічого важливого там не було');
  // end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,i2:integer;
    sec: integer;
begin
  sec:= StrToInt(FormatDateTime('s',now));
   if sec mod 2 = 0 then // Якщо поточне число секунд парне
   begin
  i := RandomRange(1900,2021);//Тоді випадкове число в цьому проміжку на поле мемо1
  Memo1.Lines.Add(IntToStr(i));
  end
  else
  begin
  i2 := RandomRange(1,10);//Інакше випадкове число із цього проміжку
  Memo1.Lines.Add(FloatToStr(i2/10));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   S: string;
begin
   S:= FormatDateTime( 'Дата: dd.mm ', Now);// Запис поточної дати у форматі дд.мм
   Memo1.Lines.Add(S);
end;
procedure TForm1.Button3Click(Sender: TObject);
begin                                          // Перевірка на наявність слів лінощі, академзаборгованість, сессія у тексті
  if (pos('лінощі', Memo1.Lines.Text)=0)  then
  if (pos('академзаборгованість', Memo1.Lines.Text)=0)then
  if (pos('сессія', Memo1.Lines.Text)=0) then
  Memo1.Lines.Text:=Ansiuppercase(Memo1.Lines.Text);

  end;

 initialization
  Randomize; //При кожному запуску різні набори випадкових чисел
end.

