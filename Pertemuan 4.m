A = [3 -2 0; -2 3 0; 0 0 5]
tools(poly(A)) %untuk menghitung akar persamaan karakteristik
rref(A-5*ey(3)) %untuk menghitung (A-5I)x=0
rref(A-1*ey(3)) %untuk menghitung (A-1I)x=0
