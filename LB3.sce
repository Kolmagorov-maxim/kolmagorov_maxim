A1=[2, 3, 4; 5, 4, 6; 2, 4, 4]
B=[5; 3; 4]

C=rref([A1 B])
[n,m]=size(C);
x=C(:,m)

A1T=A1'
C=A1T*B

A1O=inv(A1)
w=A1O*A1

A13=A1^3

A=[12, 8, 14; 8, 34, 8; 14, 8, 12]

[X,Y]=spec(A)

XO=inv(X)
w2=XO*X
