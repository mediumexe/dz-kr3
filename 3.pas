function F(x: Real): Real;
begin
F := 2 * x * x * x - x * x - x + 7;
end;
function TrapezoidalRule(a, b: Real; n: Integer): Real;
var
h, sum, x: Real;
i: Integer;
begin
h := (b - a) / n;
sum := (F(a) + F(b)) / 2;
for i := 1 to n - 1 do
begin
x := a + i * h;
sum := sum + F(x);
end;
TrapezoidalRule := h * sum;
end;
var
a, b: Real;
n: Integer;
integral: Real;
begin
writeln('Введите границы интегрирования:');
write('Нижний предел a = ');
readln(a);
write('Верхний предел b = ');
readln(b);
writeln();
writeln('Введите количество разбиений:');
readln(n);
integral := TrapezoidalRule(a, b, n);
writeln();
writeln('Результат:');
writeln('Полная площадь фигуры:', integral:0:4);
end.