%Section 4.5: Problem 6
%Gauss-Newton Method

function x = GaussNewton(f,x,num)

[y,dy] = f(x);

for i = 1:num
s = (dy'*dy)\(dy'*y);
x = x - s;
[y,dy] = f(x);
end

