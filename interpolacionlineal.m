clc
clear all

syms x
fun=input('Ingrese la funcion: ');
xr=input('Ingrese el valor de x que desea calcular: ');
x0=input('Ingrese x0: ');
x1=input('Ingrese x1: ');

x=x0;
fx0=subs(fun);
x=x1;
fx1=subs(fun);
y=fx0+((fx1-fx0)/(x1-x0))*(xr-x0);

fprintf('\nEl valor de f(x) es: %g\n',y)
