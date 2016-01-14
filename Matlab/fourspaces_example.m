%output_precision(2);
%format
fprintf('>A=[1 2 2 5 7;2 4 3 8 11; 3 6 4 11 15]\n');
pause
A=[1 2 2 5 7;2 4 3 8 11; 3 6 4 11 15]
pause
fprintf('>U=rref(A)\n');
pause
U=rref(A)
pause
fprintf('Basis for N(A):\n');
fprintf('Start with V1=[* 1 * 0 0]'', V2=[* 0 * 1 0]'' and V3=[* 0 * 0 1]'' \n');
fprintf('Then fill in *\n\n');
pause
fprintf('>V1 = [-2 1 0 0 0]'';\n');
V1 = [-2 1 0 0 0]';
pause
fprintf('>V2 = [-1 0 -2 1 0]'';\n');
V2 = [-1 0 -2 1 0]';
pause
fprintf('>V3 = [-1 0 -3 0 1]'';\n');
V3 = [-1 0 -2 1 0]';
pause
fprintf('\nVerify that these vectors are in N(A)\n\n');
pause
fprintf('>A*V1\n');
pause
A*V1
pause
fprintf('>A*V2\n');
pause
A*V2
pause
fprintf('>A*V3\n');
pause
A*V3
pause
fprintf('Basis for R(A):\n')
fprintf('Columns of A <-> pivot columns of U\n\n');
pause
fprintf('>W1 = A(:,1)\n');
pause
W1 = A(:,1)
pause
fprintf('>W2 = A(:,3)\n');
pause
W2 = A(:,3)
pause
fprintf('Every element of R(A) is a linear combination of W1 and W2\n');
fprintf('Find the coefs c1 and c2 such that\n');
fprintf('c1*W1 + c2*W2 = A(:,4)\n\n');
pause
fprintf('i.e., [W1 W2]*[c1; c2]'' = A(:,4)\n\n');
pause
% [W1 W2]*[c1; c2]' = A(:,4)
pause
fprintf('>c = [W1 W2]\\A(:,4)\n');
pause
c = [W1 W2]\A(:,4)
pause
fprintf('Check\n\n');
pause
fprintf('>A(:,4)\n');
pause
A(:,4)
pause
fprintf('>c(1)*W1 + c(2)*W2\n');
pause
c(1)*W1 + c(2)*W2
pause
fprintf('Basis for R(A^T):\n')
fprintf('Non-zero columns of U^T\n\n');
pause
fprintf('>WT1 = U(1,:)''\n');
pause
WT1 = U(1,:)'
pause
fprintf('>WT2 = U(2,:)''\n');
pause
WT2 = U(2,:)'
pause
fprintf('Check: last column of A^T\n')
fprintf('is a linear combination of WT1 and WT2.\n\n');
pause
fprintf('c = [WT1 WT2]\\A(3,:)''');
pause
c = [WT1 WT2]\A(3,:)'
pause
pause
fprintf('>A(3,:)''\n');
pause
A(3,:)'
pause
fprintf('>c(1)*WT1 + c(2)*WT2\n');
pause
c(1)*WT1 + c(2)*WT2
pause
fprintf('Another way to find a basis for R(A^T)\n\n');
pause
fprintf('>UU = rref(A'')\n');
pause
UU = rref(A')
pause
fprintf('So first two columns of A^T\n');
fprintf('form a (different) basis for R(A^T)\n\n');
pause
fprintf('Also this gives a basis for N(A^T)\n\n');
pause
fprintf('>VT1 = [1;-2;1]\n');
pause
VT1 = [1;-2;1]
pause
fprintf('>A''*VT1\n');
pause
A'*VT1
pause
fprintf('Orthogonality\n\n');
pause
fprintf('>dot(V1,WT1)\n>dot(V1,WT2)\n>dot(V2,WT1)\n>dot(V2,WT2)\n>dot(V3,WT1)\n>dot(V3,WT2)\n>dot(VT1,W1)\n>dot(VT1,W2)\n');
pause
dot(V1,WT1)
dot(V1,WT2)
dot(V2,WT1)
dot(V2,WT2)
dot(V3,WT1)
dot(V3,WT2)
dot(VT1,W1)
dot(VT1,W2)
format;
