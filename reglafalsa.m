clc
clear all

syms x

fun=input('Introduce la funcion (en funcion de x): ')
xl=input('Introduce xlower: ')
xu=input('Introduce xupper: ')
es=input('Introduce error esperado: ')
xreal=input('Introduce valor real: ')
ni=input('Introduce numero de iteraciones: ')
a=1;
ea=10000000;

xl2=xl;
xu2=xu;

while a<=ni
    x=xl;
    fxl=subs(fun);
    x=xu;
    fxu=subs(fun);
    xr=xu-((fxu*(xl-xu))/(fxl-fxu));
    x=xr;
    fxr=subs(fun);
    b=fxr*fxl;
    
    et=abs((xreal-xr)/xreal)*100;
    
    if a==1
       fprintf('No. \t\t xl \t\t f(xl) \t\t xu \t\t f(xu) \t\t xr \t\t f(xr) \t\t f(xr)*f(xl) \t ea \t\t et \n')
       fprintf('%.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f',a,xl,fxl,xu,fxu,xr,fxr,b) 
       fprintf('\n')
    else
       ea=abs((xr-xr2)/xr)*100;
       fprintf('%.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f \t %.5f',a,xl,fxl,xu,fxu,xr,fxr,b,ea,et) 
       fprintf('\n')
    end
    if b<0
       xu=xr;
    else
       xl=xr;
    end  
    a=a+1;
    
    if et<es || ea<es || fxl==0 || fxu==0
       a=ni+1;
    end
    xr2=xr;
end

fprintf('\nEl Resultado es: %.5f',xr);

x=xl2:.01:xu2;
xlim([xl2,xu2]);

plot(x,subs(fun))
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';