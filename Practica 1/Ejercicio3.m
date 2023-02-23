eval1 = @(x) ((x-1).^8);
eval2 = @(x) (1-8.0 * x +28.0 * x.^2 - 56.0 * x.^3 +70.0 * x.^4 -56.0 * x.^5 +28.0 * x.^6 - 8.0 * x.^7 + x.^8);
eval3 = @(x) eval_polinomio([1 -8.0 28.0 -56.0 70.0 -56.0 28.0 -8.0 1], x);

f = cell(3, 1);

f{1} = eval1;
f{2} = eval2;
f{3} = eval3;

nodes = 0.99:0.0002:1.01;

for i = 1:3
    subplot(3,1,i), plot(nodes, f{i}(nodes));
end