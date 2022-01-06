function [x] = triangular( A,b )

%Verificar si la matriz es cuadrada
if size(A,1)==size(A,2)
%Verificar si la matriz es triangular
if verifica(A)==0
%Verificar que b tenga n elementos
if length(b)==size(A,1)
    
n=size(A,1);
x=zeros(n,1);
x(n)=b(n)/A(n,n);

    for k=n-1:-1:1
        x(k)=(b(k)-A(k,k+1:n)*x(k+1:n))/A(k,k);
    
    end
else
    disp('El vector b no tiene la longitud correcta')
    x=[];
end
else 
    disp('La matriz no es triangular')
    x=[];
end
else
    disp('La matriz no es cuadrada')
    x=[];
end
end

