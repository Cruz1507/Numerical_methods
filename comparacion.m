clear all
clc

a=-pi/3;
b=pi/2;
tol=(1/2)^10;

[ raiz1, C1, error1 ]=bisection(a,b,tol);
[ raiz2, C2, error2 ]=regula_falsi(a,b,tol);


x=a:0.01:b;
    subplot(2,2,1)
    plot(x,f(x))
    hold on
for i=1:length(C1)
    plot(C1(i),f(C1(i)),'r*')
    pause(0.1)
    title('Metodo de Bisección')
    hold on
end

    subplot(2,2,2)
    plot(x,f(x))
    hold on
for j=1:length(C2)
    plot(C2(j),f(C2(j)),'g*')
    pause(0.1)
    title('Regula Falsi')
    hold on
end
q1=['El número de iteraciones de biseccion es: ',num2str(length(C1)) ,'  error ', num2str(error1(length(C1)))]
q2=['El número de iteraciones y error de regula es: ',num2str(length(C2)) ,' error ', num2str(error2(length(C2)))]

subplot(2,2,3)
bar(error1)
title('ERROR BISECCION')

subplot(2,2,4)
bar(error2)
title('ERROR REGULA')