A = [1 2 3 4 5; 5 1 2 3 4; 4 5 1 2 3; 3 4 5 1 2; 2 3 4 5 1]
A

A(5,:) = A(5,:) - 2*A(1,:)
A(4,:) = A(4,:) - 3*A(1,:)
A(3,:) = A(3,:) - 4*A(1,:)
A(2,:) = A(2,:) - 5*A(1,:)
A(5,:) = A(5,:) - 1/9*A(2,:)
A(4,:) = A(4,:) - 2/9*A(2,:)
A(3,:) = A(3,:) - 1/3*A(2,:)
A(5,:) = A(5,:) - 1/12*A(3,:)
A(4,:) = A(4,:) - 1/6*A(3,:)
A(5,:) = A(5,:) - 1/14*A(4,:)
A(4,:) = A(4,:) - 56/45*A(5,:)
A(3,:) = A(3,:) - 28/15*A(5,:)
A(2,:) = A(2,:) - 98/25*A(5,:)
