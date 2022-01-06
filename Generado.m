function V = Generado(B)

m=size(B,1);
n=size(B,2);
p=min(n,m);
V=zeros(1,p);
for i=1:p
    if B(i,i)~=0
    Ver=sum(abs(B(i+1:m,i)))
    if Ver==0
        V(i)=i;
    else
        V(i)=0;
    end
    else
        V(i)=0;
end


end

