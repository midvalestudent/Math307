fprintf('>A=[1 1 1;1 1 -1;1 -1 1]\n');
pause;
A=[1 1 1;1 1 -1;1 -1 1]
pause;

fprintf('>b=[3;1;1]\n');
pause;
b=[3;1;1]
pause;

fprintf('>b=[3 1 1]''\n');
pause;
b=[3 1 1]'
pause;

fprintf('>x=A^(-1)*b\n');
pause;
x=A^(-1)*b
pause;

fprintf('>x=A\\b\n');
pause;
x=A\b
pause;

fprintf('>A*x\n');
pause;
A*x
pause;

fprintf('>A=rand(500,500);\n b=rand(500,1);\n');
pause;
A=rand(500,500);
b=rand(500,1);
pause;

fprintf('>tic();A^(-1)*b;toc()\n');
pause;
tic();A^(-1)*b;toc()
pause;

fprintf('>tic();A\\b;toc()\n');
pause;
tic();A\b;toc()
pause;

fprintf('>A=[1 1 1;1 1 -1;1 -1 1]\n');
pause;
A=[1 1 1;1 1 -1;1 -1 1]
pause;

%fprintf('>b=[3 1 1]'\n');
%pause;
b=[3 1 1]'
pause;


fprintf('>C=[A b]\n');
pause;
C=[A b]
pause;

fprintf('>rref(C)\n');
pause;
rref(C)
pause;

fprintf('>A=[1 2 3;4 5 6;7 8 9]\n');
pause;
A=[1 2 3;4 5 6;7 8 9]
pause;

%fprintf('>b=[1 1 1]'\n');
%pause;
b=[1 1 1]'
pause;

fprintf('>A\\b\n');
pause;
A\b
pause;

fprintf('>rref([A b])\n');
pause;
rref([A b])
pause;

