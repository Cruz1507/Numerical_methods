function Sol= Solucion_SSLL(M,b)


% M=[2 3 4 ; 4 6 8  ; 4 2 1 ]
% b=[3 4 9 ]

if size(M,1)==size(M,2)
    if verifica(M)==0
        Sol=triangular(M,b);
    else
        [M_nueva,b_nueva]=Gauss(M,b);
        Sol=triangular(M_nueva,b_nueva);
        
    end
  
else 
    M_transpose=transpose(M);
    M_adjunta=M_transpose*M;
    b_adjunta=M_transpose*transpose(b);
    
    if verifica(M_adjunta)==0
        Sol=triangular(M_adjunta,b_adjunta);
    else
        [M_nueva,b_nueva]=Gauss(M_adjunta,transpose(b_adjunta));
        Sol=triangular(M_nueva,b_nueva);
        
    end
end
end