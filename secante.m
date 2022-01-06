function [ p, error ] = secante( p0,p1, tol )
y0 = funcions( p0 );
y1 = funcions( p1 );
p(2)=p0-y1*(p0-p1)/(y0-y1);
error(2)=abs(p(1)-p0);
i=2;
if y0==0
    disp('La raíz es p0')
else
while error(i)>tol
     y(i) = funcions( p(i) );
    if y(i)==0
        w=['la raíz es ', num2str(y(i))];
        disp(w)
        break
    else
    p(i+1)=p(i-1)-funcions(p(i-1))*(p(i-1)-p(i))/(funcions(p(i-1))-funcions(p(i)));
    error(i+1)=abs(p(i+1)-p(i));
    i=i+1;
    end

end

end

end