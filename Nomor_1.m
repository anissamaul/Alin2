% x = mobil
% y = motor
% 3x + 5y = 17.000
% 4x + 2y = 18.000

A = [3 5; 4 2]
B = [17000; 18000]
C = ['x'; 'y']

C = inv(A)*B
