function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1); % m = 5000
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1); % m X 1

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Sizes
% Theta1: 25 X 401 means layer 2 has 25 elements
% Theta2: 10 X 26 means layer 3 has 10 elements
% X: 5000 X 400 aka m x n

X = [ones(m, 1), X]; %5000 x 401

a2 = sigmoid(Theta1 * X'); % 25 * 5000

a3 = sigmoid(Theta2 * [ones(1, m); a2]); % 10 x 5000

[x, p] = max(a3', [], 2);

% =========================================================================


end
