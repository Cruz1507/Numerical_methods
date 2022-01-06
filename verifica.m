function [ Sumainf ] = verifica( A )
n=size(A,1);
Sumainf=0;
for i=1:n-1
    aux=sum(abs(A(i+1:n,i)));
    Sumainf= Sumainf+aux;
end


end

