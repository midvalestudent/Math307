X=linspace(0,1,18);
Y=sin(2*pi*X);
plot(X,Y,"o")
axis([-0.1 1.1 -1.5 1.5])
pause
hold on
V=vander(X);
a=V\Y';
XL=linspace(0,1,500);
YL=polyval(a,XL);
plot(XL,YL);
pause
Y(5) = Y(5)+0.02;
plot(X(5),Y(5),"or")
pause
a=V\Y';
YL=polyval(a,XL);
plot(XL,YL,"r");
hold off
