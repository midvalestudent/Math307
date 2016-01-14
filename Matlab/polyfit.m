X=[1 2 3 4 5]'
Y=[2 3 4 5 4]'

plot(X,Y,'or')
axis([0 6 0 6])
hold on

VV=vander(X)
V=VV(:,3:5)

a=V'*V\V'*Y;

XL=linspace(0,6,100);
plot(XL,polyval(a,XL));
