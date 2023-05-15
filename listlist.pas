type vector = array of real;  
var (n,m):= readinteger2('Введите сколько параметров вектора и сколько векторов в списке');
var b := new vector[m];// массив векторов
var c : vector; 
function вектор(a:vector) : real; // длина вектора |a| = (summa(params^2))^(1/2)

var summ:real;
 begin
  for var i:= 0 to a.High do summ+=(a[i])**2;  
  вектор := abs(summ**0.5)
 end;
 
begin
 for var i:= 0 to m-1 do b[i]:=readarrreal($'введите параметры -> {i+1} вектор ',n); //заполнение массива векторов 
 b.tolist.print; println('   // список векторов который дан'); // вывод составленного списка из массива векторов
 b.Select(t->вектор(t)).ToList.print; println('  // список длинн векторов |a| = (summa(params^2))^(1/2) '); // вывод списка длинн векторов
 for var j:= 1 to m do print(b.Select(t->вектор(t)).ToList[^j]); println('  // список длинн векторов по указателям с ^1 до ^последнего');
 
 for var k :=1 to 2 do
 begin
 c:= readarrreal(n);
 print(b.Select(t->вектор(t)).ToList + вектор(c))
 end;
end.