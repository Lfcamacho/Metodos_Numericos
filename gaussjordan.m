clc
clear all

lineas=input('Introduce cantidad de renglones de la matriz: ');
columnas=input('Introduce cantidad de columnas de la matriz: ');

    
    a=1;
    b=1;
    
    fprintf('\n');
    display('Ingresa los valores de la matriz llenando primero los renglones')
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
    Z=A;
    
    while(a<=lineas)
       b=a;
       c=a;
       d=1;
       while(b<=length(A))
           A(a,b)=A(a,b)/A(a,c);
           b=b+1;
       end
       
       while(d<=lineas)
           b=1;
           j=d;
           if(d~=a)
               while(b<=length(A))
                  A(d,b)= A(d,b)-A(a,b)*A(j,a);
                  b=b+1;
               end
           end
           d=d+1;
       end
          a=a+1; 
    end
       
    Z=rref(Z);
    
    h=1;
    while(h<=lineas)
       fprintf('X%g= %g\n',h,Z(h,columnas))
       h=h+1;
    end