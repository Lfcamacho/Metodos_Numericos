clc
clear all

syms x

fun=input('Introduce la funcion (en funcion de x): ')
xi=input('Introduce xi: ')
es=input('Introduce error esperado: ')
ni=input('Introduce numero de iteraciones: ')
a=1;
ea=10000000;

xi3=xi;


while a<=ni
    
x=xi;
fxi=subs(fun);
der=subs(diff(fun));
xi2=xi-(fxi/der);

    ea=abs((xi2-xi)/xi2)*100;
    
    if a==1
       fprintf('No. \t\t xi \t\t f(xi) \t\t f''(xi) \t\t xi+1 \t\t ea \t \n')
  
    end
       fprintf('%.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f',a,xi,fxi,der,xi2,ea) 
       fprintf('\n')
    
    a=a+1;
    
    if ea<es || fxi==0
       a=ni+1;
    end
    xi=xi2;
end

fprintf('\nEl Resultado es: %.5f',xi2);

xi2=xi2+2;
x=xi3:.01:xi2;


plot(x,subs(fun))
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';