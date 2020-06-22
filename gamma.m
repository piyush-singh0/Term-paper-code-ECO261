%GAMMA  =   rate away from Ito R(day^-1) / rate of healing
function[g] = gamma(day , I0)
	theta = rateofchangeofR();
	A = theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5);
	g = A/I0;
end