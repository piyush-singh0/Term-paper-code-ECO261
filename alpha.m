%  alpha =  rate to D due to disease (day-1)
function[al] = alpha(day , I0)
	theta = rateofchangeofD();
	A = theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5);
	al = A/I0;
end