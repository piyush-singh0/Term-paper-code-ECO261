clear ; close all; clc;
a = csvread('qwerty.csv');
x= a(:,2);
days = (1:size(x,1))';
fprintf('plotting line graph.\n');
plot(days,x)
title('DailySusceptible');
xlabel('Days');
ylabel('DailySusceptible');
print("-dpng", "DailySusceptible1.png"); 
fprintf('Press enter to continue.\n');
fprintf('Press "Ctrl+c" to exit.\n');
pause;
close all;

y=x;
x=days;
fprintf('plotting scatter graph.\n');
scatter(x,y,'+')
title('DailySusceptible');
xlabel('Days');
ylabel('DailySusceptible');
print("-dpng", "DailySusceptible2.png");
fprintf('Press enter to continue.\n');
fprintf('Press "Ctrl+c" to exit.\n');
pause;
close all;
 
fprintf('Appling machine learing algorithm...\n');
[theta cost] = rateofchangeofS()
m = days_X(days);
m = [ones(size(m,1),1) m];
m = m*theta;
scatter(days,y, "marker",'+');
hold on;
plot(days,m);
xlabel('Days');
ylabel('DailySusceptibleML');
print("-dpng", "DailySusceptibleML.png");
day = 168+16;
	A = theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5)
	
