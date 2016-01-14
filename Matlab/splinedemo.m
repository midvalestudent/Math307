disp('Compute the blocks occuring in the spline matrix:')
disp('L=[1 1 1;3 2 1;6 2 0];')
	L=[1 1 1;3 2 1;6 2 0];
disp('M=[0 0 0;0 0 -1; 0 -2 0];')
	M=[0 0 0;0 0 -1; 0 -2 0];
disp('Z=zeros(3,3);')
	Z=zeros(3,3);
disp('T=[0 0 0;0 2 0; 0 0 0];')
	T=[0 0 0;0 2 0; 0 0 0];
disp('V=[1 1 1;0 0 0;6 2 0];')
	V=[1 1 1;0 0 0;6 2 0];
pause;

disp('');disp('')
disp('Assemble the blocks to form spline matrix:')
disp('S=[L M Z; Z L M; T Z V]')
pause;
	S=[L M Z; Z L M; T Z V]
pause;

disp('');disp('')
disp('The points to be interpolated:')
disp('X=[1, 1.5, 2, 2.5];')
	X=[1, 1.5, 2, 2.5];
disp('Y=[0.5, 0.8, 0.2, 0.4];')
	Y=[0.5, 0.8, 0.2, 0.4];
disp('plot(X,Y,"o")')
pause;
	plot(X,Y,'o')
disp('axis([0.5 3 0 1])')
	axis([0.5 3 0 1])
disp('hold on')
	hold on
pause;

disp('');disp('')
disp('Solve the equation for the coefficients:')
disp('b=[Y(2)-Y(1),0,0,Y(3)-Y(2),0,0,Y(4)-Y(3),0,0];')
	b=[Y(2)-Y(1),0,0,Y(3)-Y(2),0,0,Y(4)-Y(3),0,0];
disp('a=S\b;')
	a=S\b';
pause;

disp('');disp('')
disp('L is the spacing between the x points (assumed equal):')
disp('L = X(2)-X(1);')
	L = X(2)-X(1);
pause;

disp('');disp('')
disp('XL are 50 equally spaced points in the first interval:')
disp('XL = linspace(X(1),X(2),50);')
	XL = linspace(X(1),X(2),50);
pause;

disp('');disp('')
disp('p contains the coefficients of the first spline polynomial:')
disp('p = [a(1) a(2) a(3) Y(1)];')
p = [a(1) a(2) a(3) Y(1)];
pause;

disp('');disp('')
disp('XLL are the shifted and scaled points:')
disp('XLL = (XL - X(1)*ones(1,50))/L;')
	XLL = (XL - X(1)*ones(1,50))/L;
pause;

disp('');disp('')
disp('Evaluate the polynomial and plot:')
disp('YL = polyval(p,XLL);')
	YL = polyval(p,XLL);
pause;
disp('plot(XL,YL);')
	plot(XL,YL);
pause;

disp('');disp('')
disp('Repeat for the other two intevals:')
disp('XL = linspace(X(2),X(3),50);')
XL = linspace(X(2),X(3),50);

disp('p = [a(4) a(5) a(6) Y(2)];')
	p = [a(4) a(5) a(6) Y(2)];

disp('XLL = (XL - X(2)*ones(1,50))/L;')
	XLL = (XL - X(2)*ones(1,50))/L;

disp('YL = polyval(p,XLL);')
	YL = polyval(p,XLL);

disp('plot(XL,YL);')
	plot(XL,YL);

disp('XL = linspace(X(3),X(4),50);')
	XL = linspace(X(3),X(4),50);

disp('p = [a(7) a(8) a(9) Y(3)];')
	p = [a(7) a(8) a(9) Y(3)];

disp('XLL = (XL - X(3)*ones(1,50))/L;')
	XLL = (XL - X(3)*ones(1,50))/L;

disp('YL = polyval(p,XLL);')
	YL = polyval(p,XLL);

disp('plot(XL,YL);')
	plot(XL,YL);

hold off
pause;

disp('');disp('')
disp('splinemat(n) computes the matrix for splines:')
disp('splinemat(4)')
pause;
	splinemat(4)
pause;
disp('cond(splinemat(4))')
pause;
	cond(splinemat(4))
pause;

disp('');disp('')
disp('plotspline(X,Y) plots the spline:')

disp('X=linspace(0,1,18);')
	X=linspace(0,1,18);
disp('Y=sin(2*pi*X);')
	Y=sin(2*pi*X);
disp('plotspline(X,Y);')
	plotspline(X,Y);
	hold on
pause;

disp('Y(5) = Y(5)+0.02;')
	Y(5) = Y(5)+0.02;
disp('plotspline(X,Y);')
	plotspline(X,Y);
