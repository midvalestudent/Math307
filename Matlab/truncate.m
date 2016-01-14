function [B,nentries] = truncate(A,cutoff)

% B is the truncated matrix
% nentries is the number of non-zero entries in B

[I,J] = size(A);
nentries=0;
B=zeros(I,J);

for i = [1:I] 
	for j = [1:J]
		if abs(A(i,j)) > cutoff
			B(i,j)=A(i,j);
			nentries += 1;
		end
	end
end
