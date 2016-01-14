function ftdemo1(N)

	X=linspace(0,1,1000);
	F=zeros(1,1000);

	for n=[0:N]
		F = F + 4*sin(2*pi*(2*n+1)*X)/(pi*(2*n+1));
	end

	plot(X,F)

end
