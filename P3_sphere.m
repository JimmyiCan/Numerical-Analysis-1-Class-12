function area = P3_sphere()

S = stlread("sphere.stl");
area = tri(S);
error = abs(area - 4*pi);
disp(error)
end
