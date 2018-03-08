function [len, logFound] = getLength(var, strDim)
    if ~exist('strDim', 'var') || isempty(strDim)
        strDim = [];
    elseif strcmp(strDim, 'rows')
        strDim = 1;
    elseif strcmp(strDim, 'cols')
        strDim = 2;
    else
        strDim = [];
    end
    
    if isempty(strDim)
        vecSize = size(var);
        len = prod(vecSize); %#ok<PSIZE>
    else
        vecSize = size(var, strDim);
        len = vecSize;
    end
    logFound = 'HelloWorld!';
end