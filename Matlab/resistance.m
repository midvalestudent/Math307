
function r=resistance(L,n,m)

	% if n=m then return with r=0;
	if(n==m)
		r=0;
		return;
	end

	% if m<n the swap n and m
	if(m<n)
		temp=m; m=n; n=temp;
	end

	%find the size of the matrix L
        *****
	
	%swap the nth and mth nodes to positions 1 and 2
        *****

	%compute the voltage-to current map DN
        *****

	%the effective resistance is the reciprocal of the 1 1 entry of DN
	r = 1/DN(1,1);
end
