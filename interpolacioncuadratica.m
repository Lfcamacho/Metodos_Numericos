clc
clear all

syms x
fun=input('Ingrese la funcion: ');
xr=input('Ingrese el valor de x que desea calcular: ');
x0=input('Ingrese x0: ');
x1=input('Ingrese x1: ');
x2=input('Ingrese x2: ');

x=x0;
fx0=subs(fun);
x=x1;
fx1=subs(fun);
x=x2;
fx2=subs(fun);
b0=fx0;
b1=(fx1-fx0)/(x1-x0);
b2=(((fx2-fx1)/(x2-x1))-b1)/(x2-x0);

x=xr;
y=subs(b0+b1*(x-x0)+b2*(x-x0)*(x-x1));
fprintf('\nEl valor de f(x) es: %g\n',y)