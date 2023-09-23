function test_simpsons_rule_double()
z1 = @(x,y) (1 - x.^2)*(1 - y.^2);
z2 = @(x,y) (1 - (cos(pi*x/2)).^2)*(1 - (cos(pi*y/2)).^2);
a = -1;
b = 1;
c = -1;
d = 1;
n = 100;
m = 100;
s_z1_true = 16/9;
s_z2_true = 1;
s1 = simpsons_rule_double(z1,a,b,c,d,n,m);
s2 = simpsons_rule_double(z2,a,b,c,d,n,m);
fprintf('s_z1_true is %f, s1 via simpsons is %f, error is %f\n',s_z1_true,s1,abs(s_z1_true - s1))
fprintf('s_z2_true is %f, s2 via simpsons is %f, error is %f\n',s_z2_true,s2,abs(s_z2_true - s2))
