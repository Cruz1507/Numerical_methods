function [ C ] = recuperacion( A,V )
for i=1:length(V)
    if V(i)~=0
        C(:,i)=V(i);
    else
        C(:,i)=[];
    end
    
end

end

