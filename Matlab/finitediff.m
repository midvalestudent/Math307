% code for solving f''(x) + x^2 f(x) = 8 for 0<x<1 with f(0)=2 and f(1)=1

N=50;

L=diag(-2*ones(1,N+1))+diag(ones(1,N),1)+diag(ones(1,N),-1);
L(1,1)=1;
L(1,2)=0;
L(N+1,N)=0;
L(N+1,N+1)=1;

X=linspace(0,1,N+1);
DX=1/N;
Q=diag(X.^2);
Q(1,1)=0;
Q(N+1,N+1)=0;
Q=DX^2*Q;

b=DX^2*8*ones(N+1,1);
b(1)=2;
b(N+1)=1;

F=(L+Q)\b;
plot(X,F);

