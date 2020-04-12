clc
clear all

lineas=input('Introduce cantidad de lineas 1ra matriz: ');
columnas=input('Introduce cantidad de columnas 1ra matriz: ');
lineas2=input('Introduce cantidad de lineas 2da matriz: ');
columnas2=input('Introduce cantidad de columnas 2da matriz: ');

if(lineas==lineas2 && columnas==columnas2)
    
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
    while(a<=lineas)
        while(b<=columnas)
            display(['Ingresa valor B(',num2str(a),',',num2str(b),'): '])
            A(a,b)=input('');
            C(a,b)=A(a,b)+B(a,b);
            b=b+1;
        end
        a=a+1;
        b=1;
    end
    
    fprintf('La suma de las matrices es: ')
    C
    
else
   fprintf('\nNo se puede realizar la suma porque no son del mismo tamaño');
end
