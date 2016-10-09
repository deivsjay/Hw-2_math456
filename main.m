clc
clear all
close all

%Section 4.3: Problem 6

%a.)
%Rx=Q'b
A = [3 -1 2; 4 1 0; -3 2 1; 1 1 5; -2 0 3];
b = [10; 10; -5; 15; 0];
[Q,R] = qr(A);
t0 = Q'*b;
t0 = t0(1:3,:);
R = R(1:3,1:3);
xbar = R\t0;
r = b - A*xbar;
error = sqrt(sum(r.^2));
disp('The least squares solution is');
xbar
disp('The two-norm error is');
error

%b.)
A = [4 2 3 0; -2 3 -1 1; 1 3 -4 2; 1 0 1 -1; 3 1 3 -2];
b = [10; 0; 2; 0; 5];
[Q,R] = qr(A);
t0 = Q'*b;
t0 = t0(1:4,:);
R = R(1:4,1:4);
xbar = R\t0;
r = b - A*xbar;
error = sqrt(sum(r.^2));
disp('The least squares solution is');
xbar
disp('The two-norm error is');
error

%Section 4.5: Problem 6

z=GaussNewton(@functionvalue,[10;1],10);
w=[8;12.3;15.5;16.8;17.1;15.8;15.2;14];
i=1:8;

i=i';
error=w-z(1)*i.*exp(i*z(2));
RMSE=sqrt(sum((error-mean(error)).^2)/8);

disp('z is');
z(1)
z(2)
disp('The RMSE is');
RMSE

%Section 4.5: Problem 8

z=LevenbergMarquardt(@functionvalue2,[16;3],10);
w=[8;12.3;15.5;16.8;17.1;15.8;15.2;14];
i=1:8;

i=i';
error=w-z(1)*i.^z(2);
RMSE=sqrt(sum((error-mean(error)).^2)/8);

disp('z is');
z(1)
z(2)
disp('The RMSE is');
RMSE