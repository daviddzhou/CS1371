%%%
% File: Lect_08_Logical_Vectors.m
%%%
%  ADMIN
%
%       Note about what to learn:
%       -------------------------
%       We are trying to teach you problem solving
%       - Never try to memorize code written for you in class, recitation or
%       help desk
%       - What you need to know is the basic tools and how to apply them
%       to solve problems
%
%   PRS short-term strategy
%
% CONCEPT:
%    logical variable
%
%
%%%
% IMPLEMENTATION
%   - vectors (double or char)
%   - indexing - selecting 0 or more values from a vector
%   - so far, our indices have been specified as vectors, but ...
%   - logical constants:  true, false
%   - displaying logical results 
%   should be displayed as 'true' or 'false'
%   actually displayed as '1' or '0' (sigh!)
%	- indexing with logicals 
str = 'the quick brown fox jumped over the loopy dog';
it = str == 'e' 
str(it)
stra = str
strb = str
%   -- think about the find() function
dat = find(it)
%       rules: A(<A_logical_index>) = B(<B_logical_index>)
%       <A_logical_index> values: true false
%                         length: any lengtn
%       <B_logical_index> values: true false
%                         length: any but vals beyond lenth(B) must be
%                         false
%
%   - operations on logicals:  and:&, or:|, not:~
%   - math operations with logical results
%   -   >, >=, <, <=, ==, ~=
%	- find() function
find([false true true false true])
%  returns a list of the positions in the logical vector
%  of the true values
%	- indexing with logicals 
%	- any()
%	- all()

%
%	EXAMPLES
%	- vectors - "get odd elements" - 2 meanings
vec = round(100.*rand(1,8) - 30);
%  1. get the values at odd indices
oddPos = vec(1:2:end);
%  2. get the elements in A that have odd values
it = mod(vec,2) == 1
vec(it)
%  recall: mod(7,2)
%   - capitalizing every word
str
it = [find(str == ' ')+ 1, 1]
str(it) = str(it) + 'A' - 'a'
there = [true,str == ' ']
stra(it) = stra(it) + 'A' - 'a'
%  we need to capitalize the first letter of every word:
strb
find(str == 's')
%  the letter after the space
%  
%   - verify that all 26 letters were used by "the quick ..."
% 1. get rid of everything that is not lower case alpha
% 2. sort them
str = sort(strb) 
str = str(str ~= ' ')
d = 'a'-1, str, 'z' + 1
d = diff(str)
bad = find(d>1)
fprintf('the missing letter is %s\n', str(bad)+1)
% where is it bad?
% we could actually be missing a and z
% because we're not testing for them.  Fix that.
