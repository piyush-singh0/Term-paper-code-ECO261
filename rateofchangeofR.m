%(gamma) (day-1) is the inverse of the average time taken by an infected to recover from the infection.
%here we will solve for the the change in recovered polpulation.

function[theta,cost] = rateofchangeofR()
	y = csvread('qwerty.csv');
	y = y(:,3);
	X = (1:size(y,1))';
    X = days_X(X);   
	X = [ones(size(X,1),1) X]; 
	theta = zeros(size(X,2),1); 
	initial_theta = zeros(size(X,2),1);
	[cost, grad] = costFunction(theta, X, y);
	options = optimset('GradObj', 'on', 'MaxIter', 400);
	[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
end