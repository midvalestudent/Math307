% heat.m
% MATLAB/Octave commands for solving the ordinary differential equation
% T''(x) = -1 with T(0) = 1 and T(1) = 1

% set the number of approximation points to be n+1=51
n = 50;

% create the set of points x_i
X = linspace(0,1,n+1);

% set the gap between points (DX)
dx = 1/n;

% create the matrix L
L = ( diag(-2*ones(1,n+1)) + diag(ones(1,n),-1) + diag(ones(1,n),1) );
L(1,1) = 1;
L(1,2) = 0;
L(n+1,n+1) = 1;
L(n+1,n) = 0;

% create the vector for the right-hand-side of the matrix equation
r = -ones(n+1,1)*dx^2;
r(1) = 1;
r(n+1) = 1;

% solve the matrix equation
T = L\r;

% plot the solution and the analytic solution
plot(X,T,'bo', X,-0.5*X.*(X-1)+1,'r-');
legend('numerical solution', 'analytic solution');
xlabel('x');
ylabel('T');

