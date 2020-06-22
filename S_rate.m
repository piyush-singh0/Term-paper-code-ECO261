%suseptibility rate

	
	function [dSdt] = S_rate(S, E, I, R)
	muB = BirthRate; %Birth rate / immegration / infulx of more suseptibles into the sustem
	muD = DeathRate; %Death rate , death due to the causes other than due to the infection
	
	onDay = 168; % 15th june is the 168th day after 1st January
	N0 = 1300000000;
	D0 = 9918;
	R0 = 180324;
	I0 = 343075;
	E0 = 520956;
	S0 = N0-E0-I0-R0-D0;

	lam = lambda(onDay, S0,I0);
	
	N = S+E+I+R; %total population
	dSdt = muB*N - lam*I*S - muD*S;
	end
