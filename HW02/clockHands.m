function [ out1 , out2 ] = clockHands( hour , minute , amount)

%total amount of minutes elapsed 
newmin = minute + amount;
%the modulus of minutes + amount in order to encapsulate the true minute
minchange = mod(newmin,60);
hourpass = floor(newmin/60);
out1 = mod(hour + hourpass,12) ;
    
out2 = minchange;

end
