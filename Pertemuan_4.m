disp('_____Menghitung Nilai Eigen dan Vektor Eigen_____')
A = input('Matriks_A=');
disp('Matriks_A=');
disp(A);
dA=det(A);
[ba,ka]=size(A);
syms L;
for j=1;ka
for i=1;ba
C=A-L*eye(ba);
end
end
disp(C);

disp('Polinomial karakteristik matriks A=');
disp(det(C));

disp('Nilai eigen matriks A=');
disp(eig(A));
[V D]=eig(A)
