%, (lambda) is the transmission rate (day-1).
%here we will solve for the the change in suseptibles polpulation

function[theta, cost] = rateofchangeofS()
	y = csvread('qwerty.csv');
	y1 = y(:,1);
	y2 = y(:,2);
	y3 = y(:,3);
	onDay = 168; % 15th june is the 168th day after 1st January 
	I0 = 343075;  
	s = sigma(onDay, I0) ; 
	i = floor(1/s); %incubation period
	
	thetai = rateofchangeofI();
	d = (1+i:size(y1,1)+i)';
	y4 = days_X(d);
	y4 = [ones(size(y4,1),1) y4];
	y4 = y4*thetai;
	y = y1+y2+y3+y4;
	y = -y;
	X = (1:size(y,1))';
	X = days_X(X);   
	X = [ones(size(X,1),1) X]; 
	theta = zeros(size(X,2),1); 
	initial_theta = zeros(size(X,2),1);
	[cost, grad] = costFunction(theta, X, y,0);
	options = optimset('GradObj', 'on', 'MaxIter', 400);
	[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
end