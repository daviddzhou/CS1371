% str = 'Matlab and chill';
% out = mysteryRecursion2(str);
function out = mysteryRecursion2(in)
[w,r] = strtok(in);
if isempty(w)
    out = w;
else 
    newThing = mysteryRecursion2(r);
    w = w(end:-1:1);
    out = [w,newThing];
end