%Section 4.5: Problem 8
%Levenberg-Marquardt Method

function x = LevenbergMarquardt(f,x,num)

[y,dy] = f(x);
[i,j] = size(dy);

for k = 1:num
s2 = ((dy'*dy)+eye(j))\(dy'*y);
x = x - s2
[y,dy] = f(x);
end

end