function out = recFact(n)

if n == 1 || n == 0 %%base case
    out = 1;
else
    out = n * recFact(n-1); %moving towards terminating and calling function
end

end