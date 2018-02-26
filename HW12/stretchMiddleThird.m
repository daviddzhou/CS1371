function stretchMiddleThird(imgFile,scale)
close all
%read in the image 
img = imread(imgFile);
imshow(img)
title('Original Image')


%First I need to make sure that the image can be broken into even thirds
img = makeRowsDivisibleBy3(img);

%separate into thirds 
first = img(1:end/3,:,:);
second = img(end/3+1:2*end/3,:,:);
third = img(2*end/3 + 1:end,:,:);

%find original number of rows for 2nd third 
[r,c,~] = size(second);

%stretch middle third by scale factor 
secondStretched = imresize(second,[r*scale,c]);


%put the pieces back together 
newImg = [first; secondStretched;third];


figure
imshow(newImg)

%save new image
[w,r] = strtok(imgFile,'.');
newFile = [w '_stretched' r];
imwrite(newImg,newFile)




end

function out = makeRowsDivisibleBy3(img)
%Find size of original image
[r,c,~] = size(img); 

%figure out how many rows to delete to make divisible by 3
numToDelete = mod(r,3);

%keep the part of the image that you want
out = img(1:end-numToDelete,:,:);

end