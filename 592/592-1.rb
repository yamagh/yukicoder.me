A,B,X,Y=gets.split.map(&:to_f)
x=(A*Y)/B < X ? (A*Y)/B : X
y=(B*X)/A < Y ? (B*X)/A : Y
p x+y

