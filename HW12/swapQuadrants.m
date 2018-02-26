function swapQuadrants(filename)
close all
%read in image 
img = imread(filename);
imshow(img)
title('Original Image')
figure

%make the image have even rows and columns 
img = makeEvenRowsAndColumns(img);

%Separate into quadrants 
topLeft = img(1:end/2,1:end/2,:);
topRight = img(1:end/2,end/2+1:end,:);
bottomLeft = img(end/2+1:end,1:end/2,:);
bottomRight = img(end/2+1:end,end/2+1:end,:);


%put them back together in the order you want
newImg = [bottomRight, topRight; bottomLeft, topLeft];


%show the image
figure
image(newImg);
title('Using image Function')
figure
imshow(newImg);
title('Using imshow Function')




end

function imgArray = makeEvenRowsAndColumns(imgArray)
[r,c,~] = size(imgArray);
if mod(r,2) == 1
    imgArray(end,:,:) = [];
end
if mod(c,2) == 1
    imgArray(:,end,:) = [];
end



end