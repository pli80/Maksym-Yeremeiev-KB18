unit validator_2;

interface
uses
  Classes, SysUtils;

function AntiLet( var txt: string): string;
implementation
function AntiLet( var txt: string): string;
var
  arr:array[0..255] of char;
  a,b:byte;
 begin
   b:=0;
   arr:=txt;
   for a:= 0 to 255 do
   if arr[a]='a' then
    begin
        b:=b+1;
    end;
   AntiLet:=IntToStr(b);
   end;
end.

