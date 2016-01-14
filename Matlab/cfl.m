% The matrix D and vector b contain data for 
% the first 20 football games of the CFL season
% for 2007. The order of the teams is
% BC, Calgary, Edmonton, Hamilton, Montreal, Saskatchewan, Toronto, Winnipeg

D=[
0 0 0 0 -1 0 1 0;
0 0 0 1 0 0 0 -1;
0 1 -1 0 0 0 0 0;
-1 0 0 0 0 1 0 0; 
0 0 0 0 1 0 -1 0; 
-1 0 1 0 0 0 0 0; 
0 0 0 1 0 0 0 -1;
0 -1 0 0 0 1 0 0; 
1 0 0 0 0 0 -1 0; 
0 0 -1 0 0 0 0 1;
0 0 0 0 -1 1 0 0; 
0 1 0 -1 0 0 0 0; 
0 0 0 0 -1 0 0 1;
1 0 -1 0 0 0 0 0; 
0 0 0 -1 0 0 1 0; 
0 -1 0 0 0 1 0 0; 
0 -1 0 0 0 0 1 0; 
0 0 1 0 0 0 0 -1;
1 0 0 0 0 -1 0 0; 
0 0 0 -1 1 0 0 0 
]
b=[
14;
12;
25;
9;
8;
6;
4;
2;
2;
0;
9;
28;
9;
20;
25;
41;
33;
4;
30;
9
]

% Compute the matrices for the least squares equation
L = D'*D
bb = D'*b

% Since we know that N(L) is one dimensional spanned by [1; 1; 1; ...]
% we can get a unique solution by setting v_0 to zero. The vector
% v2 will contain the remaining entries. It solves the equation defined
% by the bottom right (N-1)x(N-1) block of the equations.
N=length(L)
L2=L(2:N,2:N)
bb2=bb(2:N)
v2=L2\bb2

% Now we add the zero in the first entry to get a solution to the 
% original least squares equation
v=[0;v2]


