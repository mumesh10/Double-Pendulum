function [yprime] = pend(t, y)

yprime=zeros(1,8);

alpha1= 0.3;
alpha2= 0.17;
alpha3= 0.5;
R= 1;
mu1= 0.001;
mu2= 0.001;
mu3= 0.001;
a=1.22;
b= 1.2;
omega1= 0.9;
omega2= 0.4;
ita1= 0.05;
ita2= 0.2;
ita3= 0.3;
mu0= 0.076;

yprime(1) = y(2);
yprime(2)= alpha1*yprime(4)*sin(y(3))+R*alpha2*sin(y(5))+alpha1*pow2(y(4))*cos(y(3))+R*alpha2*pow2(y(6))*cos(y(5))-mu0*y(2)-y(1)+ita1*sin(y(7)) ;
yprime(3)= y(4) ;
yprime(4)= alpha3*R*yprime(6)*cos(y(5)-y(3))+yprime(2)*sin(y(3))-pow2(omega1)*sin(y(3))+R*alpha3*pow2(y(6))*sin(y(5)-y(3))-mu1*y(4)+mu2*(y(6)-y(4)) ;
yprime(5)= y(6) ;
yprime(6)= (-1/R)*yprime(4)*cos(y(5)-y(3))+(1/R)*yprime(2)*sin(y(5))-pow2(omega2)*sin(y(5))-(1/R)*pow2(y(4))*sin(y(5)-y(3))-mu3*(y(6)-y(4)) ;
yprime(7)= y(8) ;
yprime(8)= a-b*y(8)+(ita2*y(1)-ita3*sin(y(7)))*cos(y(7)) ;

yprime=yprime';

end
