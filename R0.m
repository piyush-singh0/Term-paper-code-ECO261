% reproduction number R0
function[r] = R0(day,S0,I0,N0)
  lam= lambda(day, S0 , I0);
  gam = gamma(day, I0) ;
  r = lam/gam*N0;
end

onDay = 168; % 15th june is the 168th day after 1st January
N0 = 1300000000;
D0 = 9918;
R0  = 180324;
I0 = 343075;
E0 = 520956;
S0 = N0-E0-I0-R0-D0;

lam = lambda(onDay, S0,I0)
gam = gamma(onDay, I0)  
R0 = lam/gam*N0




