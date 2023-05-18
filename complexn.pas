   type complexn = class
             re,im: integer;
             end;
procedure Vyvod(var f:complexn);
begin
if f.im<0 then writeln(f.re,' - ',-f.im,'i')
else writeln(f.re,' + ',f.im,'i');
end;
procedure Summa(f,g:complexn;var z:complexn);
begin
z.re:=f.re+g.re;
z.im:=f.im+g.im;
end;
procedure Raznost(f,g:complexn;var z:complexn);
begin
z.re:=f.re-g.re;
z.im:=f.im-g.im;
end;
procedure Proizvedenie(f,g:complexn;var z:complexn);
begin
z.re:=f.re*g.re-f.im*g.im;
z.im:=g.re*f.im+f.re*g.im;
end;
{procedure Chastnoe(f,g:complexn;var z:complexn);
begin
z.re:=(f.re*g.re+f.im*g.im)/(sqr(g.re)+sqr(g.im));
z.im:=(f.im*g.re-f.re*g.im)/(sqr(g.re)+sqr(g.im));
end;
}
var  a,b,c:complexn;
     w:char;
begin
a:= complexn.Create();
writeln('Введите действительную и мнимую части 1 числа:');
readln(a.re,a.im);
b:= complexn.Create();
writeln('Введите действительную и мнимую части 2 числа:');
readln(b.re,b.im);
writeln('Выберите действие + - * /');
readln(w);
c:= complexn.Create();
case w of
'+':begin
    Summa(a,b,c);
    write('A+B=');
    Vyvod(c);
    end;
'-':begin
    Raznost(a,b,c);
    write('A-B=');
    Vyvod(c);
    end;
'*':begin
    Proizvedenie(a,b,c);
    write('A*B=');
    Vyvod(c);
    end;
    {
'/':begin
    Chastnoe(a,b,c);
    write('A/B=');
    Vyvod(c);
    end;}
end;
end.