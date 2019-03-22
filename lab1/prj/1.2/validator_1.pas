Unit validator_1;
interface
uses Dialogs;
procedure AntiDot( var ch:char );     // KeyPress
procedure AntiChar( var ch: char);   //  KeyPress
function AntiNill( var str: string): boolean;  //#0 Button1
function AntiMin( var p: real): boolean;
implementation
procedure AntiDot( var ch:char );
begin
If ch in ['.'] then ch:=','; // точка меняеться на запятую
end;
procedure AntiChar (var ch:char ); // можно вводить только числа, точку и запятую
begin
if ch in [#$0..#$07] then
begin
ShowMessage('Введено некоректний символ');
ch:= #0;
end;
if ch in [#$09..#$2B] then
begin
ShowMessage('Введено некоректний символ');
ch:= #0;
end;
if ch in [#$2E..#$2F] then
begin
ShowMessage('Введено некоректний символ');
ch:= #0;
end;
if ch in [#$3A..#$7E] then
begin
ShowMessage('Введено некоректний символ');
ch:= #0;
end;
if ch in [#$80..#$FF] then
begin
ShowMessage('Введено некоректний символ');
ch:= #0;
end;
end;
function AntiNill( var str: string):boolean;
begin
AntiNill:=false;
   if str = '' then
   begin
    ShowMessage('Пусте хоча б одне поле ');
    AntiNill:= true;
   end;

end;
 Function AntiMin( var p: real): boolean;
 begin
 AntiMin:=false;
 if p < 0 then
 AntiMin:=true;
 end;

end.
