function [ Triangular, b_Triangular ] = Gauss( A,b )
% %Verificar si A es cuadrada
if size(A,1)==size(A,2)
    if verifica(A)~=0

n=size(A,1);
bt=transpose(b);
A_aumentada=[A bt];

for j=1:n-1
    for i=j+1:n
        Parcial=-A_aumentada(i,j)/A_aumentada(j,j)*A_aumentada(j,:)+A_aumentada(i,:);
        A_aumentada(i,:)=Parcial;
    end
end
b_Triangular =A_aumentada(:,size(A_aumentada,2));
A_aumentada(:,size(A_aumentada,2))=[];
Triangular=A_aumentada;
    else
        disp('La matriz ya es triangular')
        
    end
else
    disp('La matriz no es cuadrada')
    A=[];
    
    end
end

