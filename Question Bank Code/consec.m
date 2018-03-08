function [ out ] = consec(str)
letter = str(1)
out = letter 
for i = 2:length(str)
    if letter ~= str(i)
        out = [out str(i)]
        letter = str(i)
    end
end
end