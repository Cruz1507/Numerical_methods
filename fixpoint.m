function [ h ,error ] = fixpoint( g,p0,maxit )

h(1)=g(p0);

for i=1:maxit
    h(i+1)=g(h(i));
    error(i)=abs(h(i+1)-h(i));
    

end

