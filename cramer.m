clc
clear all

lineas=input('Introduce cantidad de ecuaciones: ');
columnas=input('Introduce cantidad de variables 1ra matriz: ');

if(lineas==columnas)
    a=1;
    b=1;
    
    while(a<=lineas)
        fprintf('\n');
        fprintf('Ingresa los coeficientes de la ecuacion %g\n\n',a);
        
        while(b<=columnas+1)
            display(['Ingresa valor A(',num2str(a),',',num2str(b),'): '])
            A(a,b)=input('');
            b=b+1;
        end
        a=a+1;
        b=1;
    end
    
    c=1;
    d=1;
    matriz2=matriz;
    matriz2(:,columnas+1)=[];
    fprintf('\n')
    
    while(c<=lineas)
        while(d<=lineas)
           if(c==d)
              z(:,d)=matriz(:,columnas+1); 
           else
              z(:,d)=matriz(:,d);
           end
           d=d+1;
        end
        
        x=det(z)/det(matriz2);
        fprintf('X%g= %g\n',c,x)
        d=1;
        c=c+1;
    end
    
else
   display('No se puede calcular porque faltan valores') 
end
    

