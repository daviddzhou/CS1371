function moveBlackPixels(imgFile1,imgFile2)
close all
%read the images
img1 = imread(imgFile1); 
img2 = imread(imgFile2);
imshow(img1)
title('Tiger with Girl 1')
figure
imshow(img2)
title('Girl 2 Alone')


%make the images the same size (make image 1 the same size as image 2) 
[r2,c2,~] = size(img2);
img1 = imresize(img1,[r2,c2]);


%find the black pixels in image one
r = img1(:,:,1);
g = img1(:,:,2);
b = img1(:,:,3);
mask = r == 0 & g == 0 & b == 0 ;
smask = cat(3,mask,mask,mask);


%move those black pixels the same places in image 2
img2(smask) = img1(smask);


figure 
imshow(img2)
title('Tiger With Girl 2')






end
