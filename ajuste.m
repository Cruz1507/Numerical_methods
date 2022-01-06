%Ingrese las coordenadas en X de los puntos

coord_x=[ 1 -3 4 8 6];
coord_xt=transpose(coord_x);
%Ingrese las coordenadas en Y  de los puntos

coord_y=[2 5 8 -1 2];
coord_yt=transpose(coord_y);
%Tamaño de la matriz
n=length(coord_x);

%Matriz para Recta

A_inic=ones(n,1);

A_recta=[A_inic coord_xt];

%Hallar los coeficientes recta
M_recta=A_recta'*A_recta;
b_recta=A_recta'*coord_yt;

Coeficientes_recta=solucionsistemasf(M_recta,b_recta');
error_recta=sum((A_recta*Coeficientes_recta-coord_y').^2);

%Ploteo de recta
x_ploteo_recta=min(coord_x)-5:0.01:max(coord_x)+5;
y_ploteo_recta=Coeficientes_recta(1)+Coeficientes_recta(2).*x_ploteo_recta;

subplot(1,3,1)
plot(coord_x,coord_y,'*')
hold on
plot(x_ploteo_recta,y_ploteo_recta,'r')
title('recta')


%Matriz para Cuadrática

A_quad=[A_inic coord_xt (coord_xt).^2];

%Hallar coeficientes pol2
M_quad=A_quad'*A_quad;
b_quad=A_quad'*coord_yt;

Coeficientes_quad=solucionsistemasf(M_quad,b_quad');
error_quad=sum((A_quad*Coeficientes_quad-coord_y').^2);

%Ploteo de quad
x_ploteo_quad=min(coord_x)-5:0.01:max(coord_x)+5;
y_ploteo_quad=Coeficientes_quad(1)+Coeficientes_quad(2).*x_ploteo_quad+Coeficientes_quad(3).*x_ploteo_quad.^2;

subplot(1,3,2)
plot(coord_x,coord_y,'*')
hold on
plot(x_ploteo_quad,y_ploteo_quad,'r')
title('cuadratica')


%Matriz para Cúbica

A_cub=[A_inic coord_xt (coord_xt).^2 (coord_xt).^3];

%Hallar coeficientes pol3
M_cub=A_cub'*A_cub;
b_cub=A_cub'*coord_yt;

Coeficientes_cub=solucionsistemasf(M_cub,b_cub');
error_cub=sum((A_cub*Coeficientes_cub-coord_y').^2);

%Ploteo de cub
x_ploteo_cub=min(coord_x)-5:0.01:max(coord_x)+5;
y_ploteo_cub=Coeficientes_cub(1)+Coeficientes_cub(2).*x_ploteo_cub+Coeficientes_cub(3).*x_ploteo_cub.^2+Coeficientes_cub(4).*x_ploteo_cub.^3;

subplot(1,3,3)
plot(coord_x,coord_y,'*')
hold on
plot(x_ploteo_cub,y_ploteo_cub,'r')
title('Cúbica')

figure 
Error=[error_recta error_quad error_cub];
bar(Error)
