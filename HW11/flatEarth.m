function [ result ] = flatEarth(velocity,time)
%HOUBF formula application
coeffs = polyfit(time,velocity,length(time)-1);
newy = polyval(coeffs,time);

%find the analytical integral of the function
pows = length(coeffs):-1:1;
intVec = coeffs./pows;
C = 0;
intCoeffs = [intVec C];
intCoeffSum = sum(intCoeffs);

if intCoeffSum < 0 
    result = 'The Earth is flat! I was right all along!';
else 
result = 'Hmm... It seems the Earth is actually round.';
end

end