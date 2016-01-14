function S=splinemat(n)

L=[1 1 1;3 2 1;6 2 0];
M=[0 0 0;0 0 -1; 0 -2 0];
Z=zeros(3,3);
T=[0 0 0;0 2 0; 0 0 0];
V=[1 1 1;0 0 0;6 2 0];

if(n==2)
	S=T+V;
else
	S=zeros(3*(n-1),3*(n-1));
	for k=[1:n-2]
		for l=[1:k-1]
			S(3*k-2:3*k,3*l-2:3*l) = Z;
		end
		S(3*k-2:3*k,3*k-2:3*k) = L;
		S(3*k-2:3*k,3*k+1:3*k+3) = M;
		for l=[k+2:n-1]	
			S(3*k-2:3*k,3*l-2:3*l) = Z;
		end
	end
	S(3*(n-1)-2:3*(n-1),1:3)=T;
	for l=[2:n-2]
		S(3*(n-1)-2:3*(n-1),3*l-2:3*l) = Z;
	end
	S(3*(n-1)-2:3*(n-1),3*(n-1)-2:3*(n-1))=V;
end
end
