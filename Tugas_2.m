% 2x1 + 6x2 + 2x3 = 2
% -3x1 - 8x2 = 2
% 4x1 + 9x2 + 2x3 = 3
A = [2 6 2; -3 -8 0; 4 9 2]
B = [2; 2; 3]

% mencari matriks U, dimana matriks memiliki diagonal 1
% dan memiliki matriks segitiga bawah
A(1,:) = A(1,:)*(1/2)     %B1*(1/2)
A(2,:) = A(2,:)+3*A(1,:)  %B2+3B1
A(3,:) = A(3,:)-4*A(1,:)  %B3+-4B1
A(3,:) = A(3,:)+3*A(2,:)  %B3+3B2
A(3,:) = A(3,:)*(1/7)     %B3*(1/7)

U = A

% mencari matriks L, dimana matriks menjadi segitiga atas
% dan untuk memperoleh matriks ini kita cukup melihat hasil
% pengali dari eliminasi Gauss dan menginversnya
A(1,:) = A(1,:)*(1/2)     %B1*(1/2)
E1 = [1/2 0 0; 0 1 0; 0 0 1]
E1_inv = inv(E1)
A(2,:) = A(2,:)+3*A(1,:)  %B2+3B1
E2 = [1 0 0; 3 1 0; 0 0 1]
E2_inv = inv(E2)
A(3,:) = A(3,:)-4*A(1,:)  %B3+-4B1
E3 = [1 0 0; 0 1 0; -4 0 1]
E3_inv = inv(E3)
A(3,:) = A(3,:)+3*A(2,:)  %B3+3B2
E4 = [1 0 0; 0 1 0; 0 3 1]
E4_inv = inv(E4)
A(3,:) = A(3,:)*(1/7)     %B3*(1/7)
E5 = [1 0 0; 0 1 0; 0 0 1/7]
E5_inv = inv(E5)

L = [E1_inv*E2_inv*E3_inv*E4_inv*E5_inv]

% mencari nilai y1, y2, y3 terlebih dahulu
% karena matriks U*vektor kolom X dimisalkan sama dengan vektor kolom Y
% Y = [y1; y2; y3]
% L*Y = B
Y = [L B]
Y(1,:) = Y(1,:)*(1/2)      %B1*(1/2)
Y(2,:) = Y(2,:)+3*Y(1,:)   %B2+3B1
Y(3,:) = Y(3,:)-4*Y(1,:)   %B3-4B1
Y(3,:) = Y(3,:)+3*Y(2,:)   %B3+3B2
Y(3,:) = Y(3,:)*(1/7)      %B3*(1/7)
% maka:
Y = [1; 5; 2]

% mencari nilai x1, x2, x3
% X = [x1; x2; x3]
% U*X = Y
X = [U Y]
X(1,:) = X(1,:)-X(3,:)     %B1-B3
X(2,:) = X(2,:)-3*X(3,:)   %B2-3*B3
X(1,:) = X(1,:)-3*X(2,:)   %B1-3*B2
% maka:
X = [2; -1; 2]
