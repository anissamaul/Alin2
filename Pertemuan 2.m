p = 20; q = 15
p == q
p < q       %ketika jawabannya 0 maka bernilai false
p > q
p <= q
p >= q

x = 60
sudut = (x/360)*2*pi
sin(sudut)
cos(sudut)
log(sudut)

%logaritma menggunakan bilangan pokok
log(18)

%logaritma dengan bilangan pokok 10
log10(10)

%nilai pemangkatan c
exp(1)

A = [10 5 2 6; 2 3 11 4; 8 5 7 12; 4 15 14 1]
B = [10 2 5 6]  %vektor baris
C = [10;2;5;6]  %vektor kolom

%membuat matriks menggunakan persamaan matematika
a = 3; b = 4; c = 5; d = 6;
Matriks_3 = [a*b a^2 sqrt(a*b); b^2 c*d d-a; c*d a+b d/2]

Matriks_4 = [a*b a^2 sqrt(b); b^2 c*d d-1; c*d a+b d/2]

%elemen baris pertama
A(1,:)

%elemen baris kedua
A(2,:)

%elemen kolom pertama
A(:,1)

%elemen kolom kedua
A(:,2)

%elemen kolom ke-n

A(2,3)
A(2,2:3)

%coba tuliskan code dibawah ini dan simpulkan :
A(3,2),A(2,3)
A(5,1)
A(1:3,2:3)
A(3,:)
A(1:3,2)
A(3,2:end)


