clear all
clc

a=-pi/3;
b=9*pi/2;
tol=(1/2)^10;

[ raiz, C, error ]=bisection(a,b,tol)

x=a:0.01:b;
plot(x,f(x))
hold on
for i=1:length(C)
    plot(C(i),f(C(i)),'r*')
    pause(0.5)
    hold on
end