clc
clear all

syms x
fun=input('Ingrese la funcion que desea integrar: ');
n=input('Ingrese cantidad de segmentos: ');

z=1;
while(z<=n+1)
    display(['Ingresa x',num2str(z),': '])
    equis(z)=input('');
    z=z+1;
end

I=0;
i=0;
t=1;

while(t<=n)
a=equis(t);
b=equis(t+1);

x=a;
fa=subs(fun);
x=b;
fb=subs(fun);
i=(b-a)*((fa+fb)/2);
I=I+i;
t=t+1;
end

fprintf('\nLa Integral es: ',I);