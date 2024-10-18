function W = gradient_decent(X, Y)
n = 10000;
A = 0.001;
W = zeros(size(X, 2), 1);
for i = 1:n
    Grad = gradient(X, Y, W);
    W = W - A*Grad;
end
end