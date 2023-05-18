type
  Прямоугольник = record
    Владелец: string;
    Длина: real;
    Ширина: real;
    Диагональ: string;

    constructor(s,d:string; a, b: real);
    begin
      Владелец := s;
      Длина := a;
      Ширина := b;
      Диагональ := d
    end;

    function ToString: string; override :=
      $'Прямоугольник {Владелец} имеет размеры {Длина} x {Ширина} и площадь {Длина * Ширина}{#10}Его диагональ равна {Диагональ}';  
  end;

begin
  var r1: Прямоугольник;
  var s := ReadlnString;
  var x : string;
  var p := 1;
  r1.Владелец := ReadWordFromString(s, p);
  r1.Длина := ReadRealFromString(s, p);
  r1.Ширина := ReadRealFromString(s, p);
  str(sqrt(sqr(r1.Длина)+sqr(r1.Ширина)):0:3,x);
  r1.Диагональ := x;
  Println(r1);

end.