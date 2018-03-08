function [ top20struct ] = nyTimesTop(link)
%this function will take in the name of the link and then parse the desired
%info
info =  webread(link);
info = nyTimesParser(info);


end

