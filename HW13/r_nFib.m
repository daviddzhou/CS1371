function [ fibSeq ] = r_nFib( begin, terms )
%Sometimes depression gets to you in the worst of ways in order to figure
%out how to ameliorate this situation we must find the first 1xN integer
%denoting the number of terms in the resulting Fibonacci sequence. Isn't
%life just a beautiful concept...kms

fibSeq = fibonacci( begin, terms);

end

function [ out ]  = fibonacci( begin, terms )
out=[];
if (begin == 0) | (begin == 1)
    out = [begin 1];
else
    out = [begin begin];
end

for i = 3:terms
    next = out(i-1) + out(i-2);
    out(i) = next;
end
    
end