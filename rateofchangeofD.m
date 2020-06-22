%(alpha) (day-1)  is the rate at which people die per day due to the infection.
%here we will solve for the the change in deceased polpulation.

function[theta,cost] = rateofchangeofD()
	y = csvread('qwerty.csv');
	y = y(:,2);
	X = (1:size(y,1))';
    X = days_X(X);   
	X = [ones(size(X,1),1) X]; 
	theta = zeros(size(X,2),1); 
	initial_theta = zeros(size(X,2),1);
	[cost, grad] = costFunction(theta, X, y);
	options = optimset('GradObj', 'on', 'MaxIter', 400);
	[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
end