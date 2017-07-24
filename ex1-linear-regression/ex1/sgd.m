function [theta, J_history] = sgd(X, y, theta, alpha, max_iters)
m = length(y); % number of training examples
J_history = zeros(max_iters, 1);
theta_prev = zeros(2,1);
figure;
for i = 1 : max_iters
    for j = 1 : m
        h = X(j) * theta;
        errors = h - y(j);

        gradient = alpha  * (X(j) * errors);
        theta_prev = theta;
        theta = theta - gradient;
    % ============================================================

    % Save the cost J in every iteration    
        J_history(i) = computeCost(X, y, theta);
    end
    
    hold on;

    plot([theta_prev(1) theta(1)], [theta_prev(2) theta(2)]);
    plot(theta(1), theta(2), 'rx', 'MarkerSize', 3, 'LineWidth', 2);
    
end
end


