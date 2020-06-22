onDay = 168; % 15th june is the 168th day after 1st January
N0 = 1300000000;
D0 = 9918;
R0  = 180324;
I0 = 343075;
E0 = 520956;
S0 = N0-E0-I0-R0-D0;
iter = 500
[s16 e16 i16 r16 d16] = ODEsolver(S0, E0, I0 ,R0 , D0, iter);
pause
plot(1:iter,s);
hold on;
plot(1:iter,e);
plot(1:iter,i);
plot(1:iter,r);
plot(1:iter,d);
hold off;
legend('Susceptible','Exposed','Infected','Recovered','Deceased');
xlabel('Days');
ylabel('Population');
print("-dpng", "3.png");
