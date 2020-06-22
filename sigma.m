%SIGMA =  = rate from E to I(day-1) / inverse of incubation period of the infection
%14 days, clinically detained
function[s] = sigma(day,I0)
theta = rateofchangeofI();
	A = theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5);
	day = day + 14;
	E0 =  theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5);
	s = A - I0*(gamma(day,I0)+alpha(day,I0));
	s = s/E0;
end