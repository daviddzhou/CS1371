            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Recursion                     %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
            
                        %% What is recursion
%Recursion is a concept in programming where within a function,
%the function calls itself. (mind blowing!!!!)

%Every recursive function has the following 3 elements: 
%1) terminating condition
%2) moving toward the terminating condition
%3) the function calling itself 

%Question: These 3 elements seem very similar to a loop...sooooo why would you ever
%want to use recursion, or why is it even needed?

%Answer: 
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.
%RECURSION IS NOT THE SAME THING AS ITERATION.

%now that we have that out of our system...also, there are some problems in
%life that MUST be done recursively. However, these are usually very
%difficult concepts. Watch this nifty youtube video that talks about this:
%https://www.youtube.com/watch?v=i7sm9dzFtEI

%Also, in some algorithms, using recursion makes it a lot more efficient
%than an iterative solution (we will talk more about this at the end of the
%semester) 


%% In class example of the telephone game psuedocode









%So let's think about a classic recursive example: the factorial. 
%The iterative definition of a factorial is: 
%n! = n * (n-1) * (n-2) * (n-3) * ..... * 1

%% Iterative  factorial code
n = 4;
fact = 1;
for x = n:-1:1
    fact = fact * x;
end

%However, there is also the recursive definition where in order to compute
%the factorial, you have to compute another factorial
%n!= n * (n-1)!


%% Recursive Factorial Code 

function out = recFact(4);
if n==1|n==0
    out = 1;
else 
    out = n.*rfact(n-1);%this moves back and continues to call itself until an output is found
end
end

% Steps in recursive coding 
% 1) think about the base case (usually structured in an if statement)
% 2) think about how you can move towards the base case (usually in an else/elseif)
% 3) think about where the recursion comes into play

%Recursive coding is naturally inductive reasoning, which may be very
%different that how you have solved all of your other problems!

%POSSIBLE TEST QUESTION - HOW MANY TIMES WOULD IT BE CALLED -LOTS OF
%SEMANTICS
%% Tracing example 1

vec = [0 9 2 1 5];
out = mysteryRecursion(vec);

%% Coding Example 1:
%find the recursive sum of a vector 
%code is in the file "recursiveSum"
total = recursiveSum(1:5);

%%Other examples of easy recursion problems you should be able to do:
%recursive min, max, mean, remove spaces from string, reverse vector

%% Tracing Example 2: 
str = 'Matlab and chill';
out = mysteryRecursion2(str);








%% Coding Example 2 Wrapper/Helper Functions
% In recursion problems, you can't really initialize things. Also in order
% to do any type of preprocessing, you shouldn't do this in your recursive
% function. This just complicates things. Therefore, if you want to do
% these types of things, you should have a nonrecursive function (wrapper)
% that preprocesses and/or initializes and then calls a recursive function
% (helper)

%% Palidrome Checker 

%write a function called "palindromeCheck" that checks if a string is a
%palidrome or not. A palindrome is a word or phrase that is the same
%forwards and backwards REGARDLESS of case and punctuation. 
%Ex: palindromeCheck('mom')  --> true
%Ex: palindromeCheck('matlab')--> false
%Ex: palindromeCheck('Pat and Edna tap!') --> true

out = palindromeCheck('mom');



%% Coding example 3: Recursion with Loops
%Starter Problem: findNestedContents
%Given a 1x1 nested cell array, output the contents of the cell array using
%recursion. 
%ex: out = findNestedContents({{{{{'Serena'}}}}});
% out => 'Serena'

%% Cell Cat
%Given a nested cell array, create a string that contains all of the
%characters from the cell array. It is not guaranteed that the cell array
%or any nested cell arrays are 1x1;
%ex: out = cellCat({'hi',{'there',{{'p','al'}}}})
% out => 'heytherepal'
   



%% Test Difficulty Problems

%% Conceptual: 
% 1) What is a wrapper function and how can it be useful?
% 2) What are the 3 pillars of recursion?



%% Median
%Write a function call "recMedian" that takes in a vector and finds the median of the vector
%Hint: it might be useful sort before hand
%The median of [2 3] is the average of the two numbers (2.5). 
%Ex: recMedian([9 2 8 3 7]) --> 7

out = recMedian([9 2 8 3 7]);

%% Sum Digits  
%Write a function called sumDigits that takes in an integer number and
%finds the sum of all of the digits 
%Hint: mod(123,10) -> 3 and floor(123/10) -> 12 might be useful
%Ex: sumDigits(123) --> 6
%Ex: sumDigits(10000)--> 1

out = sumDigits(123);




%% Balanced Parentheses 
%Write a function called "isBalanced" that determines if a string has the same number of open
%and closed parentheses.

%Hint: What if seeing a ) was -1 and seeing a ( was +1?
%Hint: A wrapper/helper function might be helpful. 

%Ex: isBalanced('((hi))') -->true
%Ex: isBalanced(')(') --> true (for the purpose of our problem this is
%correct)
%Ex: isBalanced('(hi') --> false


out = isBalanced('((hi))');

%% String Weave
%Write a function called "strWeave" that takes in two strings OF THE SAME
%LENGTH, and weaves (alternates) letters between them to make a new string.

%The first letter of the first input should be the first letter of the new
%string

%Hint: Consider changing lengths of the strings as you write your function.

%ex: strWeave('mta','alb') --> 'matlab'
out = strWeave('mta','alb');

%% Remove Consecutive Duplicates
%Write a function called "removeDups" that removes consecutive duplicates
%Ex: removeDups('aaabbcda') --> 'abcda'

%Hint: A letter is only kept if the next letter is different.

out = removeDups('aaabbcda');

















