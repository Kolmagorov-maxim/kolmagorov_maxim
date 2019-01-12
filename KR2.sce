x=[0, 0.5, 1.4, 2.25, 3.5];
y=[5, 4.7, 5.7, 5.333, 4.667];
d=2
Ln=(((y(1))*((d)-(x(2)))*((d)-(x(3)))*(((d))-(x(4)))*((d)-(x(5))))/(((x(1))-(x(2)))*((x(1))-(x(3)))*((x(1))-(x(4)))*((x(1))-(x(5)))))+(((y(2))*((d)-(x(1)))*((d)-(x(3)))*(((d))-(x(4)))*((d)-(x(5))))/(((x(2))-(x(1)))*((x(2))-(x(3)))*((x(2))-(x(4)))*((x(2))-(x(5)))))+(((y(3))*((d)-(x(1)))*((d)-(x(2)))*(((d))-(x(4)))*((d)-(x(5))))/(((x(3))-(x(1)))*((x(3))-(x(2)))*((x(3))-(x(4)))*((x(3))-(x(5)))))+(((y(4))*((d)-(x(1)))*((d)-(x(2)))*(((d))-(x(3)))*((d)-(x(5))))/(((x(4))-(x(1)))*((x(4))-(x(2)))*((x(4))-(x(3)))*((x(4))-(x(5)))))+(((y(5))*((d)-(x(1)))*((d)-(x(2)))*(((d))-(x(3)))*((d)-(x(4))))/(((x(5))-(x(1)))*((x(5))-(x(2)))*((x(5))-(x(3)))*((x(5))-(x(4)))))
function h5 = myquadratic5 ( d1 )
h5 = ((5*(d1-0.5)*(d1-1.4)*(d1-2.25)*(d1-3.5))/- 5.5125)+((4.7*(d1-0)*(d1-1.4)*(d1-2.25)*(d1-3.5))/- 2.3625)+((5.7*(d1-0)*(d1-0.5)*(d1-2.25)*(d1-3.5))/2.2491)+((5.333*(d1-0)*(d1-0.5)*(d1-1.4)*(d1-3.5))/- 4.1835938)+((4.667*(d1-0)*(d1-0.5)*(d1-1.4)*(d1-2.25))/27.5625)
endfunction
xdata5 = linspace ( 0,3.5,10);
ydata5 = myquadratic5 ( xdata5 );
plot ( xdata5 , ydata5 )





x=[0, 0.5, 1.4, 2.25, 3.5];
y=[5, 4.7, 5.7, 5.333, 4.667];
f=[1, (x(1)), ((x(1))^2), ((x(1))^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
1, (x(2)), ((x(2))^2), ((x(2))^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 1, (2*(x(2))), (3*((x(2))^2)), 0, -1, (-2*(x(2))), (-3*((x(2))^2)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 2, (6*(x(2))), 0, 0, -2, (-6*(x(2))), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 1, (x(2)), ((x(2))^2), ((x(2))^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 1, (x(3)), ((x(3))^2), ((x(3))^3), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 1, (2*(x(2))), (3*((x(2))^2)), 0, -1, (-2*(x(2))), (-3*((x(2))^2)), 0, 0, 0, 0, 0, 0, 0, 0,;
0, 0, 0, 0, 0, 0, 2, (6*(x(3))), 0, 0, -2, (-6*(x(3))), 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 1, (x(3)), ((x(3))^2), ((x(3))^3), 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 1, (x(4)), ((x(4))^2), ((x(4))^3), 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 1, (2*(x(4))), (3*((x(4))^2)), 0, -1, (-2*(x(4))), (-3*((x(4))^2)), 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, (6*(x(4))), 0, 0, -2, (-6*(x(4))), 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, (x(4)), ((x(4))^2), ((x(4))^3), 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, (x(5)), ((x(5))^2), ((x(5))^3), 0, 0, 0, 0;
0, 0, 2, (6*(x(1))), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, (6*(x(5)))]
Y=[-y(1); -y(2); 0; 0; -y(2); -y(3); 0; 0; -y(3); -y(4); 0; 0; -y(4); -y(5); 0; 0 ];
d=linsolve(f, Y)
A10=d(1)
A11=d(2)
A12=d(3)
A13=d(4)
A20=d(5)
A21=d(6)
A22=d(7)
A23=d(8)
A30=d(9)
A31=d(10)
A32=d(11)
A33=d(12)
A40=d(13)
A41=d(14)
A42=d(15)
A43=d(16)
function h = myquadratic ( x )
h = d(1)+d(2)*x+d(3)*(x^2)+d(4)*(x^3)
endfunction
xdata = linspace ( x(1),x(2),100 );
ydata = myquadratic ( xdata );
plot ( xdata , ydata )
function h2 = myquadratic2 ( x )
h2 = d(5)+d(6)*x+d(7)*(x^2)+d(8)*(x^3)
endfunction
xdata2 = linspace ( x(2),x(3),100 );
ydata2 = myquadratic2 ( xdata2 );
plot ( xdata2 , ydata2 )
function h3 = myquadratic3 ( x )
h3 = d(9)+d(10)*x+d(11)*(x^2)+d(12)*(x^3)
endfunction
xdata3 = linspace ( x(3),x(4),100 );
ydata3 = myquadratic3 ( xdata3 );
plot ( xdata3 , ydata3 )
function h4 = myquadratic4 ( x )
h4 = d(13)+d(14)*x+d(15)*(x^2)+d(16)*(x^3)
endfunction
xdata4 = linspace ( x(4),x(5),100 );
ydata4 = myquadratic4 ( xdata4 );
plot ( xdata4 , ydata4 )


x=[0, 0.5, 1.4, 2.25, 3.5];
y=[5, 4.7, 5.7, 5.333, 4.667];
q=2.2
A0=y(1)
X1=(x(2))-(x(1));
X2=(x(1))-(x(2));
A1=((y(2))/X1)+((y(1))/X2)
X1=(x(3))-(x(2))*(x(3))-(x(1));
X2=(x(2))-(x(3))*(x(2))-(x(1));
X1=(x(1))-(x(2))*(x(1))-(x(2));
A2=((y(3))/X1)+((y(2))/X2)+((y(3))/X1)
X1=(((x(4))-(x(3)))*((x(4))-(x(2)))*((x(4))-(x(1))));
X2=(((x(3))-(x(4)))*((x(3))-(x(2)))*((x(3))-(x(1))));
X3=(((x(2))-(x(3)))*((x(2))-(x(4)))*((x(2))-(x(1))));
X4=(((x(1))-(x(3)))*((x(1))-(x(2)))*((x(1))-(x(4))));
A3=((y(4))/X1)+((y(3))/X2)+((y(2))/X3)+((y(1))/X4)
X1=(((x(5))-(x(4)))*((x(5))-(x(3)))*((x(5))-(x(2)))*((x(5))-(x(1))));
X2=(((x(4))-(x(5)))*((x(4))-(x(3)))*((x(4))-(x(2)))*((x(4))-(x(1))));
X3=(((x(3))-(x(4)))*((x(3))-(x(5)))*((x(3))-(x(2)))*((x(3))-(x(1))));
X4=(((x(2))-(x(4)))*((x(2))-(x(3)))*((x(2))-(x(5)))*((x(2))-(x(1))));
X5=(((x(1))-(x(4)))*((x(1))-(x(3)))*((x(1))-(x(2)))*((x(1))-(x(5))));
A4=((y(5))/X1)+((y(4))/X2)+((y(3))/X3)+((y(2))/X4)+((y(1))/X5)
h=q-2.125
N=A0+A1*(q-(x(1)))+A2*((q-(x(1)))*(q-(x(2))))+A3*((q-(x(1)))*(q-(x(2)))*(q-(x(3))))+A4*((q-(x(1)))-(q-(x(2)))-(q-(x(3)))-(q-(x(4))))
P=(N*(h^4))/384

x=[0 0.5 1.4 2.25 3.5];
y=[5 4.7 5.7 5.333 4.667];
plot2d(x,y,-4);//График экспериментальных данных
koeff=splin(x,y)
X=[1.2];
//Значение функции в заданных точках
Y=interp(X,x,y,koeff)
plot2d(X,Y,-3); //Нанесение точек на график
//Построение кубического сплайна
t=0:0.1:3.5;
ptd=interp(t,x,y,koeff);
plot2d(t,ptd);