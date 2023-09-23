function y = Gauss_Chebyshev(N)
i = 1:N;
t = cos((2*i - 1)*pi/(2*N));
w = pi/N;
f = w*atan(t)./t;
sums = cumsum(f);
z = sums(1:i:length(f));
y = z(N)/2;