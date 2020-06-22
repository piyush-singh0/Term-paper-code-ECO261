%Lambda =transmission rate (day)^-1

function[g] = lambda(day, S0 , I0)
	theta = rateofchangeofS();
	A = theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5);
	g = A/(S0*I0);
	g = abs(g);
end