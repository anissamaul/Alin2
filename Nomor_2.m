% a = apel
% j = jeruk
% 5a + 3j = 79.000
% 3a + 2j = 49.000

X = [5 3; 3 2]
Y = [79000; 49000]
Z = ['a'; 'j']

Z = inv(X)*Y
