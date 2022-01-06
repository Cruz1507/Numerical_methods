function [B,Base] = escalonar(A)

m=size(A,1);
n=size(A,2);
C=A;
for j=1:min(n,m)
    s=min(find(A(j:m,j)~=0))+j-1;
    while isempty(s) && j<n
        j=j+1;
        s=min(find(A(j:m,j)~=0))+j-1;
    end
     if j==n
         break
     end
    
    t=A(j,:);
    A(j,:)=A(s,:);
    A(s,:)=t;
    for i=j+1:m
    A(i,:)=-(A(i,j)/A(j,j))*A(j,:)+A(i,:);
    end
end
B=A;

p=min(n,m);

for i=1:p
    if B(i,i)~=0 && sum(abs(B(i+1:m,i)))==0
        Base(:,i)=C(:,i);
    else
        continue
    end
    
end


end