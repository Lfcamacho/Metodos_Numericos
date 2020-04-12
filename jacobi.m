clc
clear all

lineas=input('Introduce cantidad de ecuaciones: ');
columnas=input('Introduce cantidad de variables: ');

if(lineas==columnas)
    a=1;
    b=1;
    
    while(a<=lineas)
        fprintf('\n');
        fprintf('Ingresa los coeficientes de la ecuacion %g\n\n',a);
        
        while(b<=columnas)
            display(['Ingresa valor A(',num2str(a),',',num2str(b),'): '])
            A(a,b)=input('');
            b=b+1;
        end

        display(['Ingresa el resultado de la ecuacion ',num2str(a)])
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
    while(a<=num)
       x1=(B(1)-A(1,2)*y-A(1,3)*z)/A(1,1);
       x2=(B(2)-A(2,1)*x-A(2,3)*z)/A(2,2);
       x3=(B(3)-A(3,1)*x-A(3,2)*y)/A(3,3); 
       x=x1;
       y=x2;
       z=x3;
       a=a+1;
    end
    
 
    display(x1);
    display(x2);
    display(x3);
    
end