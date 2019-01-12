//Даны функции f (x) =sqrt(3)*sin(x) + cos(x) и g(x) = cos(2x + pi/3) - 1:
//((a) Решить уравнение f (x) = g(x).)
//(b) Исследовать функцию h(x) = f (x) - g(x) на промежутке [0; (5pi)/6].

//Вертикальные асимптоты
x=0
q=sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1
x=(5*(%pi))/6
q=sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1
//Чётность и нечётность функции
x1=-1
q1=sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1
x2=1
q2=sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1
if ( q1 == q2 ) then
disp ( "Чётная" )
elseif ( q1 == (q2)*(-1) ) then
disp ( " Не чётная! " )
else
disp ( " В общем виде" )
end

//Построение графика h(x)
function h = myquadratic ( x )
h = sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1
endfunction
xdata = linspace ( 0,(5*(%pi)/6),200 );
ydata = myquadratic ( xdata );
plot ( xdata , ydata )

//Производная первого и второго порядков с помощью интерполяционной формулы Ньютона.
//Производная первого порядка
h=0.1;
x=0:h:(5*(%pi)/6);
y=sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1;
dy=diff(y);
dy2=diff(y,2);
dy3=diff(y,3);
//Приближенное значение y’(х)
Y=(dy(1)-dy2(1)/2+dy3(1)/3)/h
//ПРоизводная второго порядка
h=0.1;
x=0:h:(5*(%pi)/6);
y=-sin(x)+2*sin((2*x) + ((%pi)/3)) + sqrt(3)*cos(x);
dy=diff(y);
dy2=diff(y,2);
dy3=diff(y,3);
//Приближенное значение y’(х)
Y=(dy(1)-dy2(1)/2+dy3(1)/3)/h

//Производная первого и второго порядка методом приближения
//Производная первого порядка
function f=myr(x); 
f=sqrt(3)*sin(x)+cos(x)-cos((2*x) + ((%pi)/3)) + 1;
endfunction;
h=0.1;
v=0:h:(5*(%pi)/6);
numdiff(myr,v)
//ПРоизводная второго порядка
function f=myr(x), f=-sin(x)+2*sin((2*x) + ((%pi)/3)) + sqrt(3)*cos(x), endfunction;
h=0.1;
v=0:h:(5*(%pi)/6);
numdiff(myr,v)

//Решение уравнения f (x) = g(x) {В h(x) = f (x) - g(x) х равен (Нахождение области определения функции )[х не равен]}:
deff('[y]=h(x)','y1 = (sqrt(3))*(sin(x))+(cos(x)), y2 = cos((2*x) + ((%pi)/3)) - 1, y=y1-y2')
fsolve(0,h)
