function [success] = timeTravel(word,popular,year)
%find the x and y values so you can apply the analytical derivative to it
x = popular(1,:);
y = popular(2,:);

%take the derivative 
coeffs = polyfit(x,y,length(x)-1);
pows = length(coeffs) - 1:-1:0;
derivCoeffs = round(coeffs .* pows,3,'significant');
derivCoeffs(end) = [];

%now you can go and use linear interpolation
wordPop = interp1(x,y,(year-1900));
increase = polyval(derivCoeffs,(year-1900));

if wordPop <= 30
    success = sprintf('''%s'' is only a %.2f, you''ll never blend in!',word,wordPop);
elseif (wordPop > 30) & (increase > 0)
    success = sprintf('''%s'' is a %.2f, you''ll fit right in! But don''t stay too long, it''s starting to decline.',word,wordPop);
else (wordPop > 30) & (increase < 0)
    success = sprintf('You''re in the clear! ''%s'' is a %.2f and it''s on the rise.',word,wordPop);
end
end