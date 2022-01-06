syms x
g(x)=1+x-0.25*x^2;
maxit=20;
p0=1;
[h ,error]=fixpoint( g,p0,maxit )
%plot(error)