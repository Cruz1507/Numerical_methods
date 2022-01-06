function [ raiz , C, error ] = bisection(a,b,tol )


if f(a)==0
    disp('La raíz es raiz=a')
elseif f(b)==0
    disp('La raíz es raiz=b')
else
    
    A(1)=a;
    B(1)=b;
    C(1)=(A(1)+B(1))/2;
    error(1)=f(C(1));
    i=1;
    while error(i)>tol
        
        if f(C(i))==0
            w=['El valor de la raíz es: ',num2str(C(i))];
            disp(w)
            break
        elseif f(A(i))*f(C(i))<0
            A(i+1)=A(i);
            B(i+1)=C(i);
            C(i+1)=(A(i+1)+B(i+1))/2;
        else
            A(i+1)=C(i);
            B(i+1)=B(i);
            C(i+1)=(A(i+1)+B(i+1))/2;
        end
        raiz=C(i+1);
        error(i+1)=abs(C(i+1)-C(i));
        i=i+1;
    
    end

end

end

