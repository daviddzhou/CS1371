function log = palindromeCheck(str) 
str = upper(str); %make everything the same case
mask = str >= 'A' & str <= 'Z';
str = str(mask); %keep only letters
log = palindromeCheck_helper(str); %call recursive function



end

function out = palindromeCheck_helper(str)
if isempty(str) | length(str) == 1 %if its nothing or 1 letter its a palindrome
    out = true;
else
    if str(1) == str(end) %if the first and last letter are the same 
        out = palindromeCheck_helper(str(2:end-1)); %remove them and check the rest of the string
    else
       out = false; %if they arent the same, its not a palindrome
    end
end


end