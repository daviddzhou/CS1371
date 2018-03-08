function displayZoo(stArr)
% DISPLAYZOO Will display the zoo in your command window
%
%   DISPLAYZOO(zoo) takes in an NxM zoo and displays the contents of each
%   field for each exhibit.
%
%   Example:
%   zoo = 1×2 struct array with fields:
%           exhibit
%           people
%           time
%           rating
%
%   DISPLAYZOO(zoo) displays:
%
%   Fields:
%   'exhibit'    'people'    'time'    'rating'
%   
%   'Harambe'    'Tigger'
%   [    500]    [    69]
%   [    420]    [     3]
%   [      6]    [     6]
%   
%   where the Fields, read from left to right, correspond to the contents
%   of each block, read to to bottom 



    [r,~] = size(stArr);
    
    fprintf('\n    Fields:\n');
    fs = fieldnames(stArr);
    disp(fs');
    for ii = 1:r
        cV = cellView(stArr(ii,:));
        disp(cV);
    end

end
function cview = cellView(stArr)

    [r,c] = size(stArr);
    sA = stArr';
    cv = struct2cell(sA(:));
    cview = [];
    
    for ii = 1:r
        
        frst = (ii-1)*c + 1;
        last = frst + c - 1;
        cview = [cview; cv(:,frst:last)];
       
        
        
    end
    
    

end