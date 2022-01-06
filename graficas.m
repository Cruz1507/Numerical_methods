clear all
clc

x=0:0.01:10;
y_=x.^2-2;

p0=1.2;
p1=1.5;
tol=(1/2)^50;

% plot(x,y_)
% hold on
% plot(x,0,'b')
% hold on

[p1, error1]=secante(p0,p1,tol);
[p2, error2]=newtonraphson(p0,tol);

    subplot(2,2,1)
    plot(x,y_)
    hold on
for i=1:length(p1)
    plot(p1(i),funcions(p1(i)),'r*')
    pause(0.1)
    title('Secante')
    hold on
end

    subplot(2,2,2)
    plot(x,y_)
    hold on
for j=1:length(p2)
    plot(p2(j),funcions(p2(j)),'g*')
    pause(0.1)
    title('Newton')
    hold on
end

subplot(2,2,3)
bar(error1)
title('ERROR SECANTE')

subplot(2,2,4)
bar(error2)
title('ERROR NEWTON')