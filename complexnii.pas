type
  complex = class
    re, im: integer;
    procedure showw; virtual;
    begin
      println('Я родитель, есть только в алгебраической форме ', self.ToString)
    end;
    constructor(re, im: integer);
    begin
      self.re := re;
      self.im := im;
    end;   
    class function operator +(a, b: complex):= complex.Create(a.re + b.re, a.im + b.im);
    class function operator -(a, b: complex):= complex.Create(a.re - b.re, a.im - b.im);
    class function operator *(a, b: complex):= complex.Create(a.re*b.re-a.im*b.im , a.re*b.im+b.re*a.im);  
    constructor(s: string);
    begin
      writeln('Введите части числа ', s);
      (re,im):= readinteger2
    end;
    function ToString: string; reintroduce;
    begin
     if re <> 0 then
       begin
           if im<0 then result := re.ToString + '-' + abs(im).ToString + 'i';
           if im>0 then result := re.ToString + '+' + abs(im).ToString + 'i';
           if  im = 0 then result := re.ToString 
       end;  
     if re = 0 then
       begin
           if im<0 then result := '-' + abs(im).ToString + 'i';
           if im>0 then result := abs(im).ToString + 'i';
           if im=0 then result := re.ToString 
        end;
     end;
   function trigo:string;    
    var x,y,z:real;
    begin
     x:= self.re;
     y:= self.im;
     z:= sqrt(x*x+y*y);
     if z<>0 then result:=$'{z}*({x/z}+{y/z}*i)'
     else result := '0'
    end;
 end; 
 Type complexr = class(complex)
  procedure showw; override;
   begin
   println('Я потомок, есть только в тригонометрической форме ',self.trigo)
   end;
  end;
  function show(a,b:complex):= $'Cумма {(a+b).tostring} разность {(a-b).tostring} произведение {(a*b).tostring}'.println;
  function show(a,b:complexr):= $'Cумма {(a+b).trigo} разность {(a-b).trigo} произведение {(a*b).trigo}'.println;
begin 
 var a:= complexr.Create('a');
    a.showw;
    show(a,a);
    println;
 var b:= complex.Create('b');
    b.showw;
    show(b,b);
    println;
 println('Для чисел a и b выбирается метод для родителя');
 show(a,b)
end.