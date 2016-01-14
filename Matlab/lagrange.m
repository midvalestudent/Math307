X=[0 0.2 0.4 0.6 0.8 1.0]
Y=[1 1.1 1.3 0.8 0.4 1.0]
plot(X,Y,"o") 
axis([-0.1, 1.1, 0, 1.5])
pause
hold on
V=vander(X)
a=V\Y'
XL=linspace(0,1,100);
YL=polyval(a,XL);
plot(XL,YL);
hold off
