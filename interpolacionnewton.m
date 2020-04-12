clc
clear all

syms x
fun=input('Ingresa la funcion: ');
xr=input('Ingrese el valor de x que desea calcular: ');
puntos=input('Ingresa cantidad de puntos conocidos: ');

a=1;
while(a<=puntos)
    display(['Ingresa x',num2str(a),': '])
    A(a,1)=input('');
    if(a==1)
        x=A(a,1);
       bs(1)= subs(fun);
    end
    a=a+1; 
end
a=1;
b=1;
c=2;
d=1;
j=puntos-1;
while(b<=puntos)
    while(a<=j)
        if(c==2)
            x=A(a,c-1);
            fx0=subs(fun);
            x=A(a+1,c-1);
            fx1=subs(fun);
        else
        fx0=A(a,c-1);
        fx1=A(a+1,c-1);
        end
        A(a,c)=(fx1-fx0)/(A(a+b,1)-A(a,1));
        a=a+1;
    end
    b=b+1;
    d=d+1;
    c=c+1;
    j=j-1;
    a=1;
end

a=2;
while(a<=puntos)
   bs(a)=A(1,a);
   a=a+1;
end
a=1;
b=1;
h=1
z=0;
while(a<=puntos)
    h=bs(a);
    while(b<a)
        h=h*(xr-A(b,1));
        b=b+1;
    end
    z=z+h;
    a=a+1;
    b=1;
end
fprintf('\nEl valor de f(x) es: %g\n',z)



