clc
clear all

num=input('Introduce cuantos puntos conocidos tienes: ');

a=1;
while(a<=num)
    display(['Ingresa el punto x',num2str(a)])
    A(a,1)=input('');
    display(['Ingresa el punto y',num2str(a)])
    A(a,2)=input('');
    
    A(a,3)=A(a,1)*A(a,2);
    A(a,4)=A(a,1)^2;  
    a=a+1;
end

    
sumx=sum(A(:,1));
sumy=sum(A(:,2));
promx=mean(A(:,1));
promy=mean(A(:,2));
xpory=sum(A(:,3));
xcuadrada=sum(A(:,4));

a1=(num*xpory-sumx*sumy)/(num*xcuadrada-sumx^2);
a0=promy-a1*promx;
syms x
y=a0+a1*x;

a=1;
while(a<=num)
    x=A(a,1);
    A(a,7)=subs(y);
    A(a,5)=(A(a,2)-promy)^2;
    A(a,6)=(A(a,2)-A(a,7))^2;
    a=a+1;
end

fprintf('\txi\t\t\tyi\t\txi*yi\t\txi^2\t\tSt\t\tSr\t\tf(x)')
A

fprintf('\nLa ecuacion es: ')
fprintf('%g+%gx\n',a0,a1)