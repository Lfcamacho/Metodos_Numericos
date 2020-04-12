clc
clear all

lineas=input('Introduce cantidad de lineas 1ra matriz: ');
columnas=input('Introduce cantidad de columnas 1ra matriz: ');
lineas2=input('Introduce cantidad de lineas 2da matriz: ');
columnas2=input('Introduce cantidad de columnas 2da matriz: ');

if(columnas==lineas2)
    
    a=1;
    b=1;
    
    fprintf('\n');
    display('Ingresa los valores de la 1ra matriz llenando primero las lineas')
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
    
    a=1;
    b=1;
    fprintf('\n');
    display('Ingresa los valores de la 2da matriz llenando primero las lineas')
    fprintf('\n');
    while(a<=lineas2)
        while(b<=columnas2)
            display(['Ingresa valor B(',num2str(a),',',num2str(b),'): '])
            A(a,b)=input('');
            b=b+1;
        end
        a=a+1;
        b=1;
    end
    
    a=1;
    b=1;
    c=1;
    d=1;
    
    
    while(a<=lineas)
        while(b<=columnas2)
            C(a,b)=0;
            while(c<=columnas)
               C(a,b)=C(a,b)+(A(a,c)*B(c,b));
               c=c+1;
            end
            c=1;
            b=b+1;
        end
        b=1;
        a=a+1;
    end
    
else
     fprintf('\nNo se puede realizar la multiplicacion porque las matrices no tienen las dimensiones adecuadas');
end