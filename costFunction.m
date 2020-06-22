%cost function for the model
function[J , grad] = costFunction(theta,X, y)
	m = length(y);
	h = X*theta - y;
	tempTheta = theta;
	tempTheta(1) = 0;
	J = (1/(2*m))*sum(h.^2) + (1/(2*m))*sum(tempTheta.^2);
	grad = (1/m)*(X'*h) + (1/m)*tempTheta;
end