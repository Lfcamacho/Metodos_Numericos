clc
clear all

grado=input('Ingresa el grado de la ecuacion: ');

a=1;
fprintf('\n')
display('Ingresa los coeficientes en orden (de mayor a menor potencia)')
while(a<=grado+1)
   A(a)=input('Ingresa el coeficiente: ');
   a=a+1;
end
num=input('Ingresa el numero de iteraciones: ');

if(grado==3)

xi=-A(grado+1)/A(grado);

num=input('Ingresa el numero de iteraciones: ');

p=1;
h=1;
a=2;
b=1;
c=1;
while(b<=num)
    j=grado+1;
    while(c<=2)
        h=xi;
        while(a<=j)
            p=A(a)+h;
            h=p*xi;
            a=a+1;
        end
       a=2;
       if(c==1)
          pn=p; 
       else
          pn2=p;
       end
       j=j-1;
       c=c+1;
    end
    xi=xi-(pn/pn2);
    c=1;
    b=b+1; 
end
xi;

a=2;
h=1;
c=2;
B(1)=A(1);
while(a<=grado)
    h=A(a)+xi*h;
    B(c)=h;
    a=a+1;
    c=c+1;
end
syms x

k=solve(B(1)*x^2+B(2)*x+B(3),x);
fprintf('\nLos resultados son: \n')
fprintf('%g\n',xi)
fprintf('%g\n',k)

else
    syms x
    a=1;
    h=0;
    j=grado;
    while(a<grado+1)
        h=h+A(a)*x^j;
        a=a+1;
        j=j-1;
    end
    k=solve(h,x);
end

fprintf('\nLos resultados son: \n')
fprintf('%g\n',k)
