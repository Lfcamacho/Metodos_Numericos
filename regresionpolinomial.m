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
    A(a,5)=A(a,1)^3;
    A(a,6)=A(a,1)^4;
    A(a,7)=A(a,1)^2*A(a,2);
    a=a+1;
end
    
sumx=sum(A(:,1));
sumy=sum(A(:,2));
promx=mean(A(:,1));
promy=mean(A(:,2));
xpory=sum(A(:,3));
xcuadrada=sum(A(:,4));
xtres=sum(A(:,5));
xcuarta=sum(A(:,6));
xcuapory=sum(A(:,7));

B=[num sumx xcuadrada sumy;sumx xcuadrada xtres xpory;xcuadrada xtres xcuarta xcuapory];
B=rref(B);

syms x
a0=B(1,4);
a1=B(2,4);
a2=B(3,4);
y=a0+a1*x+a2*x^2;

a=1;
while(a<=num)
    x=A(a,1);
    A(a,10)=subs(y);
    A(a,8)=(A(a,2)-promy)^2;
    A(a,9)=(A(a,2)-A(a,10))^2;
    a=a+1;
end

fprintf('\txi\t\tyi\t\txi*yi\t\txi^2\t\txi^3\t\txi^4\t\tSt\t\tSr\t\tf(x)')
A

fprintf('\nLa ecuacion es: ')
fprintf('%g+%gx+%gx^2\n',a0,a1,a2)

