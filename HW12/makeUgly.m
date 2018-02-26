function makeUgly(imgFile) 
close all
img = imread(imgFile);
imshow(img)
%used the figure to determine the top left point and bottom right point of
%the rectangle around the mouth
mouthTL = [682, 580]; %r,c
mouthBR = [767, 771];

TL = mouthTL;
BR = mouthBR;

%index out the smile
smileArray = img(TL(1):BR(1),TL(2):BR(2),:);
figure
imshow(smileArray)


%flip the array vertically 
flippedSmile = smileArray(end:-1:1,:,:);
% inside = flippedSmile(10:end-10,10:end-10,:);
%flippedSmile= imgaussfilt(flippedSmile,10);
% flippedSmile(10:end-10,10:end-10,:) = inside;

%put it back
img(TL(1):BR(1),TL(2):BR(2),:) = flippedSmile;
%img = imgaussfilt(img,2);
figure
imshow(img)

end