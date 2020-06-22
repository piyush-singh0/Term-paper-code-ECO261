%feature normalization
function[X] =  feature_normalization(a)
	m = mean(a);
    deviation = std(a);
	X = (a.-m)./deviation;
end