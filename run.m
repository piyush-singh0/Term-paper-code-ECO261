%stimulation script
clear ; close all; clc
fprintf('Welcome to the SEIR model of the covid-19\n')
fprintf('Press enter for the schematic of the madel\n');
fprintf('Press "Ctrl+c" to exit the model anywhere \n');
pause;

%img = imread ('SEIR-schematic.jpg');
%imshow(img);
%pause;
%close all;

fprintf('plotting no of infected starting form the start of year\n');
a = csvread('qwerty.csv');
x = a(:,2);
days = (1:size(x,1))';
scatter(days,x, "marker",'+');
pause;
close all;

fprintf('Appling machine learing algorithm to predict the value of transmision rate of the infection\n');
theta = theta_F();
m = days_X(days);
m = [ones(size(m,1),1) m];
m = m*theta;
scatter(days,x, "marker",'+');
hold on;
plot(days,m);
pause;
close all;

fprintf('Now the user is required to provide the initial conditions for running the model\n');
pause;
fprintf('for example on 12th june :\n');
fprintf('susceptibles (1.3billion) = 1300000000\n');
fprintf('Exposed = 165358\n');
fprintf('Infected = 309599\n');
fprintf('Recovered = 154239\n');
fprintf('Dead = 8889\n');
fprintf('recommended number of days to predict = 100\n');
pause; 
S0 = input('input the initial number of susceptibles - ')
E0 = input('input the initial number of exposed - ')
I0 = input('input the initial number of infected - ')
R0 = input('input the initial number of recovered - ')
D0 = input('input the initial number of dead - ')
iter = input('input the number of days the user want to predict- ')
fprintf('press enter to predict\n');
pause;
fprintf('It may take up a few seconds\n');
[s e i r d] = ODEsolver(S0, E0, I0 ,R0 , D0, iter);

plotSEIR;
pause;

fprintf('press enter to know the reprduction rate(R)\n');
pause;
fprintf('Appling machine learing algorithm to predict the value of reproduction rate of the infection\n');
R = R0(160,1300000000,321631)

