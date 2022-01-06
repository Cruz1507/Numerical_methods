function acum = sumafila(A , lafila)

filas=size(A,1);
columnas=size(A,2);
acum=0;
for i=1:columnas-1
    acum=abs(A(lafila,i)+acum)  ;
end
end
