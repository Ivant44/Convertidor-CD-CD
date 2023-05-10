function dx = buck(t,x);
%--------definicion de los parametros----%
R= 10;
L = 0.002;
C = 0.00001;
U = 32;
Vd = 0.6;
d = 0.4;
%-------------%
dx = zeros(2,1);
%--------definicion de las matrices---%

%--------definicion de la dinamica del sistema----%
dx(1) =-x(2)/L-Vd/L+(U/L)*d;
dx(2) = ((1/C)*x(1))-(1/(R*C))*x(2);
%-------------%
%x(1)/C-x(2)/(R*C)