clc
clear all

syms x
fun=input('Ingrese la funcion que desea integrar: ');
display('Introduce el intervalo')
a=input('Primer valor: ');
b=input('Segundo valor: ');
n=input('Ingrese cantidad de segmentos: ');

h=(b-a)/n;
z=a;
c=1;
while(z<=b)
    x=z;
    equis(c)=subs(fun);
    z=z+h;
    c=c+1;
end

i=0;
c=2;
z=0;
i=i+equis(1);
while(c<=n)
    z=z+equis(c);
    c=c+1;
end
z=z*2;
i=i+z;
i=i+equis(n+1);

i=i*(b-a);
i=i/(2*n);

der=diff(diff(fun));
fx=int(der,[a b])/(b-a);
ea=(-1/(12*n^2))*fx*(b-a)^3;

fprintf('\nEl valor de la integral es: %g%',i)
fprintf('\nEl error aproximado es: %g%',ea*100)
