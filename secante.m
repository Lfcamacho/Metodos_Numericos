clc
clear all

syms x

fun=input('Introduce la funcion (en funcion de x): ')
xi=input('Introduce xi: ')
ximenos=input('Introduce xi-1: ')
xreal=input('Introduce valor real: ')
es=input('Introduce error esperado: ')
ni=input('Introduce numero de iteraciones: ')
a=1;
ea=10000000;

xi3=xi;


while a<=ni
    
x=xi;
fxi=subs(fun);
x=ximenos;
fximenos=subs(fun);
xi2=xi-((fxi*(ximenos-xi))/(fximenos-fxi));

    ea=abs((xi2-xi)/xi2)*100;
    et=abs((xreal-xi2)/xreal)*100;
    
    if a==1
       fprintf('No. \t\t xi \t\t f(xi) \t\t xi-1 \t\t f(xi-1) \t\t xi+1 \t\t ea \t\t et \n')
  
    end
       fprintf('%.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f',a,xi,fxi,ximenos,fximenos,xi2,ea,et) 
       fprintf('\n')
    
    a=a+1;
    
    if ea<es || fxi==0
       a=ni+1;
    end
    ximenos=xi;
    xi=xi2;
end

fprintf('\nEl Resultado es: %.5f',xi2);

uno=xi-2;
dos=xi+2;
x=uno:.01:dos;


plot(x,subs(fun))
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';