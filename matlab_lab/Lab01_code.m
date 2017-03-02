m = [ 3; 7 ;5; 2];
vecshape = size(m);
outputvec = m;

% 1.convert to column vector
fprintf('1.\n');
if vecshape(1)<vecshape(2)
    disp(m');
else 
    disp(m);
end;

% 2.convert to row vector
fprintf('2.\n');
if vecshape(1)>vecshape(2)
    disp(m');
else 
    disp(m);
end;

% 3. Example: v: 3 7 5 2 Your output: 3/7+5/2=41/14
fprintf('3.\n');
fprintf('%d/%d+%d/%d=%d/%d\n\n',m(1),m(2),m(3),m(4),m(1)*m(4)+m(2)*m(3),m(2)*m(4))

% 4.Compute 1/1 + 1/2 + 1/3 + ... + 1/999 + 1/1000.
fprintf('4.\n');
a(1:1000) = 1;
b = 1:1000;
c = a*b';
disp(c);

% 5.Compute 1 + 1/1! + 1/2! + 1/3! + ... + 1/100!. (Note: cumprod is useful here.) Compare
%the result with exp(1).
fprintf('5.\n');
a = cumprod(1:99);
a = [1,a(1:99)];
a = 1./a;
sum(a);
disp(sum(a));

% 6 Make nxn matrices (n given in a variable) that look like all zeros surrounded by a layer of ones.
fprintf('6.\n');
n=5;
m = zeros(n,n);
m(1,:) = 1;
m(1:n,1) = 1;
m(1:n,n) = 1;
m(n,:) = 1;
disp(m);

% 7. Make nxn diagonal matrices (n given in a variable) that where the diagonal values are 1 to n. Hint: First
%determine the linear indices of the diagonal elements.
fprintf('7.\n');
a = (1:n);
m = diag(a);
disp(m);
