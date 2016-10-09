%Section 4.5: Problem 8
%Finding value

function[g,dg] = functionvalue2(y)

u = y(1);
v = y(2);
w = [8; 12.3; 15.5; 16.8; 17.1; 15.8; 15.2; 14];

i = 1:8;
i = i';

g = (w-u*i.^v);
dg(:,1) = -i.^v;
dg(:,2) = -(u*i.^v).*log(i);

end