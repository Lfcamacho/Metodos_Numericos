clc
clear all

lineas=input('Introduce cantidad de lineas 1ra matriz: ');
columnas=input('Introduce cantidad de columnas 1ra matriz: ');


if(lineas==columnas)
    
    a=1;
    b=1;
    
    fprintf('\n');
    display('Ingresa los valores de la matriz llenando primero las lineas')
    fprintf('\n');
    while(a<=lineas)
        while(b<=columnas)
            display(['Ingresa valor A(',num2str(a),',',num2str(b),'): '])
            A(a,b)=input('');
            b=b+1;
        end
        a=a+1;
        b=1;
    end
    
    if(lineas==3)
    
    matriz=A;
    matriz(:,4)=A(:,1);
    matriz(:,5)=A(:,2);
    
    a=1;
    b=1;
    determinante=0;
    while(a<=3)
       c=1;
       b=a;
       z=1;
       while(c<=3)
           z=z*matriz(c,b);
           b=b+1;
           c=c+1;
       end
       determinante=determinante+z;
       a=a+1;
    end

    
    a=1
    b=1
    while(a<=3)
       c=3;
       b=a;
       z=1;
       while(c>=1)
           z=z*matriz(c,b);
           b=b+1;
           c=c-1;
       end
       determinante=determinante-z;
       a=a+1;
    end
    
    display(determinante)
    
    else
        determinante=det(A)
    end
    
else
   display('No se puede sacar la determinante porque no es una matriz cuadrada') 
end