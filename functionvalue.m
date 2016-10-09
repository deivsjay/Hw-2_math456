%Section 4.5: Problem 6
%Finding value

function [f,df] = functionvalue(z)

u = z(1);
v = z(2);
w = [8; 12.3; 15.5; 16.8; 17.1; 15.8; 15.2; 14];

i = 1:8;
i = i';

f = (w - u*i.*exp(v*i));
df(:,1) = -i.*exp(v*i);
df(:,2) = -u*(i.^2).*exp(v*i);

end