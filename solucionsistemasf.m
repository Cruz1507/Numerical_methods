function[x]=solucionsistemasf(M,b);
%INGRESO DE LA MATRIZ
% M=[1 2 2 4 ; 2 7 4 5 ; 3 4 0 8];
dim_M=size(M);

%INGRESO DEL VECTOR b (PARA MATRIZ AUMENTADA)

% b=[0 0 0];

%MATRIZ AUMENTADA

M_aumentada=[M transpose(b)];
dim_M_aumentada=size(M_aumentada);

%Proceso de escalonar

[M_aumentada_escalonada,base_M_aumentada]=escalonar(M_aumentada);
dim_base_M=size(base_M_aumentada);


%Verificacion de Solucion

if sumafila(M_aumentada_escalonada,dim_M(1))==0 && M_aumentada_escalonada(dim_M_aumentada(1),dim_M_aumentada(2))~=0
    display('El problema no tiene solución')
    x=[];
    disp(x)
    
elseif min(dim_M(1),dim_M(2))~=min(dim_base_M(1),dim_base_M(2))
    display('El problema tiene infinitas soluciones, se proporciona una base')
    base=base_M_aumentada;
    disp(base)
    
else 
    x=Solucion_SSLL(M,b);
    disp(x)
end
end
