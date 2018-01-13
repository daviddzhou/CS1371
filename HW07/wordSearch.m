function [ solved, inds ] = wordSearch(unsolved, words)
%find the size of the unsolved array
[row, col] = size(unsolved);
%find the size of the words
[rows, cols] = size(words);
unsolved = lower(unsolved);
%create an empty array
emptyArr=zeros(rows,2);
%create an array you can apply everything to
solved = unsolved;

for i = 1:rows
    word = words(i,:);
    word = strtok(word, ' ');
    lengthW = length(word);
    %make a nested for loop to find all the indices
    for r = 1:row
        if strfind(unsolved(r,:),word) > 0
            emptyArr(i,2) = strfind(unsolved(r,:),word);
            loc = strfind(unsolved(r,:),word);
            %replace with hashtags the places where it triggers
            solved(r,loc: (loc+lengthW-1)) = '#';
            %place them into the empty array
            emptyArr(i,1) = r;
        end
        if strfind(unsolved(r,:),flip(word)) > 0 & ~contains(unsolved(r,:),word)
            emptyArr(i,2) = strfind(unsolved(r,:),flip(word)) + lengthW - 1;
            loc = strfind(unsolved(r,:),flip(word)) + lengthW - 1;
            %replace with hashtags the places where it triggers
            solved(r,(loc - lengthW + 1):loc) = '#';
            %place them into the empty array
            emptyArr(i,1) = r;
        end
    end
    unsolvedTrans = transpose(unsolved);
    for c = 1:col
        if strfind(unsolvedTrans(c,:),word) > 0
            emptyArr(i,1) = strfind(unsolvedTrans(c,:),word);
            loc = strfind(unsolvedTrans(c,:),word);
            %replace with hashtags the places where it triggers
            solved(loc:(loc + lengthW - 1),c) = '#';
            %place them into the empty array
            emptyArr(i,2) = c;
        end
        if strfind(unsolvedTrans(c,:),flip(word)) > 0 ~contains(unsolvedTrans(c,:),word);
            emptyArr(i,1) = strfind(unsolvedTrans(c,:),flip(word)) + lengthW - 1;
            loc = strfind(unsolvedTrans(c,:),flip(word)) + lengthW - 1;
            %replace with hashtags the places where it triggers
            solved((loc - lengthW + 1):loc,c) = '#';
            %place them into the empty array
            emptyArr(i,2) = c;
        end
    end
end
    inds = fliplr(emptyArr);
    solved = solved;
end
    
    
