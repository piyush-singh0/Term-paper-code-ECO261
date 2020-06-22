% ODE_solver
function [S, E, I, R, D] = ODEsolver(S0, E0, I0, R0, D0, days)
	%S0 initial no of suseptible in the population.
	%E0 initial no of exposed in the population.
	%I0 initial no of infected in the population.
	%R0 initial no of recovered in the population.
	%number of days u want to predict the data for.
	S = [S0 ; zeros(days, 1)]; %matrix size(days+1 , 1)
	E = [E0 ; zeros(days, 1)];%matrix size(days+1 , 1)
	I = [I0 ; zeros(days, 1)]; %matrix size(days+1 , 1)
	R = [R0 ; zeros(days, 1)]; %matrix size(days+1 , 1)
	D = [D0 ; zeros(days, 1)];
		for i = 2:days+1
			S(i) = S(i-1) + S_rate(S(i-1),E(i-1),I(i-1),R(i-1));
			E(i) = E(i-1) + E_rate(S(i-1),E(i-1),I(i-1),R(i-1));
			I(i) = I(i-1) + I_rate(S(i-1),E(i-1),I(i-1),R(i-1));
			R(i) = R(i-1) + R_rate(S(i-1),E(i-1),I(i-1),R(i-1));
			D(i) = D(i-1) + D_rate(S(i-1),E(i-1),I(i-1),R(i-1));
		end
	S = S(2:end);
	E = E(2:end);
	I = I(2:end);
	R = R(2:end);
	D = D(2:end);
end
