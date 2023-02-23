format long;
h = 1./33333;
sum = 0.0;

for i = 1:33333
    sum = sum + h;
end

prod1 = 33333  * h;
prod2 = 33333. * h;

[h, sum, prod1, prod2];