##
var s := ReadString; 
s:= s.ToLower;
for  var i:= length(s) downto 1 do
if ((not(s[i] in ['a'..'z'])) and (not(s[i]in ['а'..'я'] ))) or ((s[i]='ё'))  then delete(s,i,1); 
var s1:=s.Inverse;
var k:=0;
for var i:= length(s) downto 1 do
  if s[i]=s1[i] then k:=k+0
else k:=k+1;
println(k=0);