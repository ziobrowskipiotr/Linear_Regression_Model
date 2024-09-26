function Grad = gradient(X, Y, W)
%Analytical solution of the gradient of the function

% Cost function J for linear regression
%J = (1/(2*m)) * sum((h(x(i)) - y(i))^2)

% Cost function J dependent only on the parameters theta, where 'i' denotes the row number
%J_theta = (1/(2*m)) * sum(((theta_0 + theta_1*x(i) + ...) - y(i))^2)

% Formula for the derivative of the cost function J with respect to one of the thetas, where 'i' denotes the row number
%dJ_dTheta1 = (1/m) * sum(((theta_0 + theta_1 * x(i) + ...) - y(i)) * x(i))

%Alghorithm:
m = size(X, 1); % Number of training examples
n = size(X, 2); % Number of features
Grad = zeros(size(W, 1), 1); % Gradient vector initialization
    for j = 1:n
        sum = 0;
        for i = 1:m
            sum = sum + ((X(i, :) * W) - Y(i, 1)) * X(i, j);
        end
    Grad(j, 1) = (1/m) * sum;
    end
end