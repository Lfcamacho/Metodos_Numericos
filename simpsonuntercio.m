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
k=1;
y=0;
while(c<=n)
    if(mod(k,2)==1)
        z=z+equis(c);  
    else
        y=y+equis(c);
    end
    c=c+1;
    k=k+1;
end
z=z*4;
i=i+z;
y=y*2;
i=i+y;
i=i+equis(n+1);

i=i*(b-a);
i=i/(3*n);

der=diff(diff(diff(diff(fun))));
fx=int(der,[a b])/(b-a);
ea=(-1/(180*n^4))*fx*(b-a)^5;

fprintf('\nEl valor de la integral es: %g',i)
fprintf('\nEl error aproximado es: %g',ea*100)