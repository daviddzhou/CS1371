function greenScreen(imgFile,backgroundFile)
%read in the images
img = imread(imgFile);
background = imread(backgroundFile);

%make the images the same size
[r2, c2, ~] = size(img);
background = imresize(background,[r2,c2]);


%separate layers
r = img(:,:,1); 
g = img(:,:,2);
b = img(:,:,3);




%create a mask for green pixels
mask = r<=10 & g >=150 & b<=10;


%create 3D Mask
smask = cat(3,mask,mask,mask);


%place background on image
img(smask) = background(smask);


imshow(img)
[w,r] = strtok(imgFile,'.');
newFile = [w '_greenScreen' r];
imwrite(img,newFile)

end



