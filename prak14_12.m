disp ('  METODE CROUT USING MATLAB  ')
A = input('masukkan matriks A yanga akan diproses :');
B1 = input('Masukkan matriks B yang akan diproses :');

B=B1';
[n,q]=size(A);
n=length(A);

%Definisikan dulu
while n~=q
    disp('Matriks harus persegi')
    break
end

U=zeros(n);
L=zeros(n);

%Inisialisasi kolom pertama matriks L sama dengan kolom matriks A
for i=1:n
    L(i,1)=A(i,1);
end

%Inisialisasi baris pertama matriks U
for j=1:n
    U(1,j)=A(1,j)/L(1,1);
end

%Algoritma yang digunakan untuk mencari matriks L dan U
for j=2:n
    for i=j:n
        sum=0.0;
        for k=1:(j-1)
            sum=sum+L(i,k)*U(k,j);
        end
        L(i,j)=A(i,j)-sum;
    end

    U(j,j)=1;

    for i = (j+1):n
        sum=0.0;
        for k=1:(j-1)
            sum=sum+L(j,k)*U(k,i);
        end
        U(j,i)=(A(j,i)-sum)/L(j,j);
    end
end

%Metode maju untuk mencari vektor y
Y1(1)=B(1)/L(1,1);
for k=2:n
    sigma1=0;
    for j=1:k-1
        sigma1=sigma1+L(k,j)*Y1(j);
        Y1(k)=(B(k)-sigma1)/L(k,k);
    end
end
Y=Y1';

%Metode mundur untuk mencari vektor solusi x
X(n)=Y(n)/U(n,n);
for k=n-1:-1:1
    sigma2=0;
    for j=k+1:n;
        sigma2=sigma2+U(k,j)*X(j);
        X(k)=(Y(k)-sigma2)/U(k,k);
    end
end


disp('  Matriks A  ')
A
disp('  Matriks B  ')
B'
disp('  Matriks L  ')
L
disp('  Matriks U  ')
U
disp('  Matriks Y  ')
Y
disp('  Matriks X  ')
X'
