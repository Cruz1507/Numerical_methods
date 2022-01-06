clear all
clc

x=-5:0.01:5;
g=zeros(size(x));
for i=1:length(x)
    g(i)=1+x(i)-0.25*x(i)^2;
end

h=g-x;

Indices=find(h==0);

plot(x,g,'r')
hold on 
plot(x,x,'g')
hold on
plot(x(Indices),g(Indices),'b*')

