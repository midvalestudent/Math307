% code to solve Laplace's equation on a square

N=30

L=zeros((N+1)^2,(N+1)^2);
B=zeros((N+1)^2,1);
X=linspace(0,1,(N+1));

% boundary values along the sides
for n=0:N
	L(k(0,n,N),k(0,n,N))=1;
	B(k(0,n,N))=0;
	L(k(N,n,N),k(N,n,N))=1;
	B(k(N,n,N))=0;
end


% boundary values along the top and bottom
for n=1:N-1
	L(k(n,0,N),k(n,0,N))=1;
	B(k(n,0,N))=sin(pi*X(n+1));
	L(k(n,N,N),k(n,N,N))=1;
	B(k(n,N,N))=0;
end;

% connections for the interior points
for i=1:N-1
	for j=1:N-1
		L(k(i,j,N),k(i,j,N))=-4;
		L(k(i,j,N),k(i+1,j,N))=1;
		L(k(i,j,N),k(i-1,j,N))=1;
		L(k(i,j,N),k(i,j+1,N))=1;
		L(k(i,j,N),k(i,j-1,N))=1;
	end
end

%solve
F=L\B;

%plot
%if X and Y are vectors of length n and Z is an nxn matrix then
%mesh(X,Y,Z) plots the points [X(j),Y(i),Z(i,j)]

FF=zeros(N+1,N+1);
for i=0:N
	for j=0:N
		FF(j+1,i+1)=F(k(i,j,N));
	end
end

mesh(X,X,FF);
