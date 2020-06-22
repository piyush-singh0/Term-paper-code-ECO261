%input variable for the regression
function[X] = days_X(a)
	X = ones(size(a,1) , 5);
		for i=1:5
		X(:,i) = a.^i;
		end
		
end