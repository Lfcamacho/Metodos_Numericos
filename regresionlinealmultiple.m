clc
clear all

num=input('Introduce cuantos puntos conocidos tienes: ');

a=1;
while(a<=num)
    display(['Ingresa el punto x',num2str(a)])
    A(a,1)=input('');
    display(['Ingresa el segundo punto x',num2str(a)])
    A(a,2)=input('');
    display(['Ingresa el punto y',num2str(a)])
    A(a,3)=input('');
    
    A(a,4)=A(a,1)^2;
    A(a,5)=A(a,2)^2;
    A(a,6)=A(a,1)*A(a,2);
    A(a,7)=A(a,1)*A(a,3);
    A(a,8)=A(a,2)*A(a,3);

    a=a+1;
end
    
sumx1=sum(A(:,1));
sumx2=sum(A(:,2));
sumy=sum(A(:,3));
promy=mean(A(:,3));
x1cuadrada=sum(A(:,4));
x2cuadrada=sum(A(:,5));
x1porx2=sum(A(:,6));
x1pory=sum(A(:,7));
x2pory=sum(A(:,8));

B=[num sumx1 sumx2 sumy;sumx1 x1cuadrada x1porx2 x1pory;sumx2 x1porx2 x2cuadrada x2pory];
B=rref(B);

syms x x2
a0=B(1,4);
a1=B(2,4);
a2=B(3,4);
y=a0+a1*x+a2*x2;

a=1;
while(a<=num)
    x=A(a,1);
    x2=A(a,2);
    A(a,11)=subs(y);
    A(a,9)=(A(a,3)-promy)^2;
    A(a,10)=(A(a,3)-A(a,11))^2;
    a=a+1;
end

fprintf('\nLa ecuacion es: ')
fprintf('%g+%gx1+%gx2^2\n',a0,a1,a2)