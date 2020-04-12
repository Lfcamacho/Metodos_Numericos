clc
clear all

syms x
fun=input('Ingresa la funcion: ');
xr=input('Ingrese el valor de x que desea calcular: ');
puntos=input('Ingresa cantidad de puntos conocidos: ');

a=1;
while(a<=puntos)
    display(['Ingresa x',num2str(a),': '])
    equis(a)=input('');
    x=equis(a);
    fx(a)= subs(fun);
    a=a+1; 
end
a=1;
b=1;
m=1;
s=0;
while(a<=puntos)
    while(b<=puntos)
        if(b~=a)
           m=m*(xr-equis(b))/(equis(a)-equis(b)); 
        end
        b=b+1;
    end
    s=s+(m*fx(a));
    m=1;
    b=1;
    a=a+1;
end

fprintf('\nEl valor de f(x) es: %g\n',s)