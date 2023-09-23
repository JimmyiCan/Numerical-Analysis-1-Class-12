function test_Gauss_Chebyshev()
N = 1;
diff = 1;
while diff >= 1e-4
    y_comp = Gauss_Chebyshev(N);
    y_true = pi/2*log(1+sqrt(2));
    diff = abs(y_comp - y_true);
    d(N) = diff;
    N = N+1;
end
disp(N-1) % min N
disp(d(N-1))
