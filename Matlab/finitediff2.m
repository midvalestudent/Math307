% code for solving f''(x) -(4x^2+2) f(x) = 0 for 0<x<1 with f(0)=1 and f(1)=exp(1)
% and comparing to exact solution

N=50;

L=diag(-2*ones(1,N+1))+diag(ones(1,N),1)+diag(ones(1,N),-1);
L(1,1)=1;
L(1,2)=0;
L(N+1,N)=0;
L(N+1,N+1)=1;

X=linspace(0,1,N+1);
DX=1/N;
Q=diag(-4*X.^2 - 2*ones(1,N+1));
Q(1,1)=0;
Q(N+1,N+1)=0;
Q=DX^2*Q;

b=zeros(N+1,1);
b(1)=1;
b(N+1)=exp(1);

F=(L+Q)\b;
plot(X,F);
axis([0,1,0,3]);
hold on;
pause

FF=exp(X.^2);
plot(X,FF,'r');

