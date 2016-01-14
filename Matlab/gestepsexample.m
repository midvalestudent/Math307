fprintf('>C=[1 1 1 3; 1 1 -1 1; 1 -1 1 1]\n');
pause
C=[1 1 1 3; 1 1 -1 1; 1 -1 1 1]
pause
fprintf('>C(2,:) = C(2,:)-C(1,:)\n');
pause
C(2,:) = C(2,:)-C(1,:)
pause
fprintf('>C(3,:) = C(3,:)-C(1,:)\n');
pause
C(3,:) = C(3,:)-C(1,:)
pause
fprintf('>temp=C(3,:); C(3,:)=C(2,:); C(2,:)=temp\n');
pause
temp=C(3,:); C(3,:)=C(2,:); C(2,:)=temp
pause
fprintf('>C(2,:) = (-1/2)*C(2,:)\n');
pause
C(2,:) = (-1/2)*C(2,:)
pause
fprintf('>C(1,:) = C(1,:)-C(2,:)\n');
pause
C(1,:) = C(1,:)-C(2,:)
pause
fprintf('>C(3,:) = (-1/2)*C(3,:)\n');
pause
C(3,:) = (-1/2)*C(3,:)
pause
fprintf('>C(1,:) = C(1,:)-C(3,:)\n');
pause
C(1,:) = C(1,:)-C(3,:)
pause
fprintf('>rref(C)\n');
pause
rref(C)
pause
