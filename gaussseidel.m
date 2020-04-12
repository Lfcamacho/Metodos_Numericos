clc
clear all

t=input('Ingresa la funcion (utilizando el formato 3*x^2+5*x+2): ');
lineas=input('Introduce cantidad de ecuaciones: ');
columnas=input('Introduce cantidad de variables: ');

if(lineas==columnas)
    a=1;
    b=1;
    
    while(a<=lineas)
        fprintf('\n');
        fprintf('Ingresa los coeficientes de la ecuacion %g\n\n',a);
        
        while(b<=columnas)
            display(['Ingresa el coeficiente de x',num2str(b),': '])
            A(a,b)=input('');
            b=b+1;
        end

        display(['Ingresa el resultado de la ecuacion ',num2str(a),': '])
        B(a)=input('');
 
        a=a+1;
        b=1;
    end
    
    num=input('Ingresa el numero de iteraciones: ');
    
    a=1;
    syms x y z
    x=0;
    y=0;
    z=0;
    fprintf('\n');
    
    if(lineas==3)

    while(a<=num)
        fprintf('\nInteracion %g\n',a)
        equis=x;
        ye=y;
        zeta=z;
       x=(B(1)-A(1,2)*y-A(1,3)*z)/A(1,1);
       y=(B(2)-A(2,1)*x-A(2,3)*z)/A(2,2);
       z=(B(3)-A(3,1)*x-A(3,2)*y)/A(3,3);
       ex=((x-equis)/x)*100;
       ey=((y-ye)/y)*100;
       ez=((z-zeta)/z)*100;
        x1=x;
        x2=y;
        x3=z;
    
        display(x1);
        display(x2);
        display(x3);
       
       fprintf('El error de x1 es: %g\n',ex);
       fprintf('El error de x2 es: %g\n',ey);
       fprintf('El error de x3 es: %g\n',ez);
       fprintf('\n');
       a=a+1;
    end
    
    x1=x;
    x2=y;
    x3=z;
    
    display(x1);
    display(x2);
    display(x3);
    
    else
        C=[A B'];
        C=rref(C);
        D=C(:,lineas+1);
        
        while(a<=lineas)
            fprintf('X%g= %g\n',a,D(a))
            a=a+1;
        end
        
    end
else
    
   display('No se puede resolver porque no es una matriz cuadrada')
    
end
    
    

