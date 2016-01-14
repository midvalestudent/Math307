function plotspline(X,Y)

n=length(X);
L=X(2)-X(1);

S=splinemat(n);

b=zeros(1,3*(n-1));
for k=[1:n-1]
	b(3*k-2)=Y(k+1)-Y(k);
	b(3*k-1)=0;
	b(3*k)=0;
end

a=S\b';

npoints=50;
XL=[];
YL=[];
for k=[1:n-1]
	XL = [XL linspace(X(k),X(k+1),npoints)];
	p = [a(3*k-2),a(3*k-1),a(3*k),Y(k)];
	XLL = (linspace(X(k),X(k+1),npoints) - X(k)*ones(1,npoints))/L;
	YL = [YL polyval(p,XLL)];
end

plot(X,Y,'o')
hold on
plot(XL,YL)
hold off
