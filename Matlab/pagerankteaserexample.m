fprintf('>S=[0 0 0 1/3; 1/2 0 0 1/3; 1/2 1/2 0 1/3; 0 1/2 1 0]\n');
pause
S=[0 0 0 1/3; 1/2 0 0 1/3; 1/2 1/2 0 1/3; 0 1/2 1 0]
pause

fprintf('>S*[1;0;0;0]\n');
pause
S*[1;0;0;0]
pause

fprintf('>S^3*[1;0;0;0]\n');
pause
S^3*[1;0;0;0]
pause

fprintf('>S^100*[1;0;0;0]\n');
pause
S^100*[1;0;0;0]
pause

fprintf('>S^1000*[1;0;0;0]\n');
pause
S^1000*[1;0;0;0]
pause

fprintf('>S^1000*[0;1;0;0]\n');
pause
S^1000*[0;1;0;0]
pause

fprintf('>S^1000*[0;0;1;0]\n');
pause
S^1000*[0;0;1;0]
pause

fprintf('>[V,D]=eig(S); V(:,1)/sum(V(:,1))\n');
pause
[V,D]=eig(S); V(:,1)/sum(V(:,1))

