function [ vec ] = cheerfulDigits( happy )
out = isHappy(happy);
if out == true
    vec = sprintf('Wow! %d''s digits sure are cheerful.',happy);
else
    vec = sprintf('Sadly,%d''s digits aren''t very cheerful.',happy);
end

end

function [ out ] = isHappy( happy )
thousands = floor(happy/1000);
hundreds = floor(happy/100);
tens = floor((mod(happy,100)/10));
ones = floor(mod(happy,10));

happinessIsALie = (thousands^2 + hundreds^2 + tens^2 + ones^2);

if happinessIsALie == 1
    out = true;
elseif happinessIsALie == 4
    out = false;
else 
    out = isHappy( happinessIsALie );
end
end