##
var year := ReadInteger;
var dt := new DateTime(year,1,1);
var nd := Ord(dt.DayOfWeek); 
dt := dt.AddDays((12 - nd) mod 7);
while dt.Year < year+1 do
begin
if dt.Day=13 then 
  begin
 $'13.{dt.month:d2}'.Print
    end;
dt := dt.AddDays(7);
end;