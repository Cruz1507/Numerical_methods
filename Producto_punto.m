function [ prod_point ] = Producto_punto(a,b)
n=length(a);
m=length(b);

if n==m
    prod_point=0;
    for i=1:n
        z(i)=a(i)*b(i);
        prod_point=prod_point+z(i);
    end
    display('El pruducto punto es')
else
    display('los vectores tienen longitud diferente')
end
end

