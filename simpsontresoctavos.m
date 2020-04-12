clc
clear all

syms x
fun=input('Ingrese la funcion que desea integrar: ');
display('Introduce el intervalo')
a=input('Primer valor: ');
b=input('Segundo valor: ');
n=3;

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
z=z*3;
i=i+z;
y=y*3;
i=i+y;
i=i+equis(n+1);

i=i*(b-a);
i=i/8;

der=diff(diff(diff(diff(fun))));
fx=int(der,[a b])/(b-a);
ea=(-1/(6480))*fx*(b-a)^5;

fprintf('\nEl valor de la integral es: %g',i)
fprintf('\nEl error aproximado es: %g',ea*100)

%0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5