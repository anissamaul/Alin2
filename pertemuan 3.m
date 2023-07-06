A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
sum(A) %menjumlahkan setiap kolom
sum(A(:,2)) %menjumlahkan pada kolom 2
sum(A') %menjumlahkan setiap baris
sum(A')' %menjumlahkan setiap baris bentuk vertikal
diag(A) %mengetahui diagonal matriks A
sum(diag(A)) %menjumlahkan diagonal A
B = [1;2;3] %memperbesar matriks
P = [1 2 4; 4 6 5; 2 2 5]
C = [0 0 0 0; 1 1 1 1]
D = [P B; C]
x = A %mengubah matriks A menjadi x
x(:,2) = [] %manghapus bagian tertentu pada matriks

A = [1 2 3; 2 5 3; 1 0 8]
B = [1; 1; 2]
EG = [A B]
EG(3,:) = (-1)*EG(3,:)+EG(1,:) %mengubah matriks

%Pada step ini matriks EG telah membentuk matriks nol segitiga bawah
EG(2,:) = (-1)*EG(2,:)+2*EG(1,:); %B2 + 2B1
EG(3,:) = EG(3,:)+2*EG(2,:); %B# + 2B2
EG(2,:) = EG(2,:)*(-1); %-1+B#

%Pada step lanjutan dibawah ini, matriks EG membentuk matriks nol segitiga atas dan telah menjadi matriks identitas
EG(1,:) = (-1)*EG(1,:) + 2*EG(2,:); %-B1+2B@
EG(1,:) = EG(1,:) + 9*EG(3,:); %B1+9B3
EG(1,:) = (-1)*EG(1,:); %-1*B1
EG(2,:) = EG(2,:) + 3*EG(3,:); %B@+#B#


