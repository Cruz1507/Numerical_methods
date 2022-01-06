function [ p, error ] = newtonraphson( p0,tol )
[ y0 dy0 ] = funcion( p0 );
p(1)=p0-(y0/dy0);
error(1)=abs(p(1)-p0);
i=1;
if y0==0
    disp('La raíz es p0')
else
while error(i)>tol
    [ y(i) dy(i) ] = funcion( p(i) );
    if y(i)==0
        w=['la raíz es ', num2str(y(i))];
        disp(w)
        break
    else
    p(i+1)=p(i)-y(i)/dy(i);
    error(i+1)=abs(p(i+1)-p(i));
    i=i+1;
    end

end

end

end