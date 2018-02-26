function black2White(filename)
close all

%read the image
img = imread(filename);
imshow(img)
%separate into layers
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);


%produce mask for black pixels
%pure black would be r = 0, g = 0, b = 0. However, color conversations from
%MS Paint creates none pure colors so we can create a threshold to find
%near black pixels. (<=10)
mask = r <= 50 & g <= 50 & b <= 50; 


%% method 1: using 3 layer mask
smask = cat(3,mask, mask, mask);

%change black pixels to white
img(smask) = 255;
figure
imshow(img);

%% method 2: using 1 layer mask
r(mask) = 255;
g(mask) = 255;
b(mask) = 255;
img = cat(3,r,g,b);
figure
imshow(img);







end