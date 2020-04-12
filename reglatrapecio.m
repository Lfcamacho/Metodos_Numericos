clc
clear all

syms x
fun=input('Ingrese la funcion que desea integrar: ');
display('Introduce el intervalo')
a=input('Primer valor: ');
b=input('Segundo valor: ');

x=a;
fa=subs(fun);
x=b
fb=subs(fun);
i=(b-a)*((fa+fb)/2);

der=diff(diff(fun));
fx=int(der,[a b])/(b-a);
ea=(-1/12)*fx*(b-a)^3;

fprintf('\nEl valor de la integral es: %g%',i)
fprintf('\nEl error aproximado es: %g%',ea*100)

