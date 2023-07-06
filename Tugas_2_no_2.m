% 3x1 - 6x2 - 3x3 = -3
% 2x1 + 6x3 = -22
% -4x1 + 7x2 + 4x3 = 3
A = [3 -6 -3; 2 0 6; -4 7 4]
B = [-3; -22; 3]

% mencari matriks U, dimana matriks memiliki diagonal 1
% dan memiliki matriks segitiga bawah
A(1,:) = A(1,:)*(1/3)       %B1*(1/3)
A(2,:) = A(2,:)-2*A(1,:)    %B2-2B1
A(2,:) = A(2,:)*(1/4)       %B2*(1/4)
A(3,:) = A(3,:)+4*A(1,:)    %B3+4B1
A(3,:) = A(3,:)+A(2,:)      %B3+B2
A(3,:) = A(3,:)*(1/2)       %B3*(1/2)

U = A

% mencari matriks L, dimana matriks menjadi segitiga atas
% dan untuk memperoleh matriks ini kita cukup melihat hasil
% pengali dari eliminasi Gauss dan menginversnya
A(1,:) = A(1,:)*(1/3)       %B1*(1/3)
E1 = [1/3 0 0; 0 1 0; 0 0 1]
E1_inv = inv(E1)
A(2,:) = A(2,:)-2*A(1,:)    %B2-2B1
E2 = [1 0 0; -2 1 0; 0 0 1]
E2_inv = inv(E2)
A(2,:) = A(2,:)*(1/4)       %B2*(1/4)
E3 = [1 0 0; 0 1/4 0; 0 0 1]
E3_inv = inv(E3)
A(3,:) = A(3,:)+4*A(1,:)    %B3+4B1
E4 = [1 0 0; 0 1 0; 4 0 1]
E4_inv = inv(E4)
A(3,:) = A(3,:)+A(2,:)      %B3+B2
E5 = [1 0 0; 0 1 0; 0 1 1]
E5_inv = inv(E5)
A(3,:) = A(3,:)*(1/2)       %B3*(1/2)
E6 = [1 0 0; 0 1 0; 0 0 1/2]
E6_inv = inv(E6)

L = [E1_inv*E2_inv*E3_inv*E4_inv*E5_inv*E6_inv]
A = L*U

% mencari nilai y1, y2, y3 terlebih dahulu
% karena matriks U*vektor kolom X dimisalkan sama dengan vektor kolom Y
% Y = [y1; y2; y3]
% L*Y = B
Y = [L B]
Y(1,:) = Y(1,:)*(1/3)      %B1*(1/3)
Y(2,:) = Y(2,:)-2*Y(1,:)   %B2-2B1
Y(2,:) = Y(2,:)*(1/4)      %B2*(1/4)
Y(3,:) = Y(3,:)+4*Y(1,:)   %B3+4B1
Y(3,:) = Y(3,:)+Y(2,:)     %B3+B2
Y(3,:) = Y(3,:)*(1/2)      %B3*(1/2)
% maka:
Y = [-1; -5; -3]

% mencari nilai x1, x2, x3
% X = [x1; x2; x3]
% U*X = Y
X = [U Y]
X(1,:) = X(1,:)+X(3,:)      %B1+B3
X(2,:) = X(2,:)-2*X(3,:)    %B2-2*B3
X(1,:) = X(1,:)+2*X(2,:)    %B1+2*B2
% maka:
X = [-2; 1; -3]
