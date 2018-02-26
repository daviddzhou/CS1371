function out = greyScale(imgFile)

img = imread(imgFile);
%change values to doubles
img = double(img);

%separate into layers
r = img(:,:,1); 
g = img(:,:,2); 
b = img(:,:,3); 

%find the average of each pixel 
%avg = (r+g+b)/3;

%other way without changing to uint8
avg = r/3 + g/3 + b/3;

%turn back to uint8
avg = uint8(avg);


%grey image 
grey = cat(3,avg,avg,avg);

out = grey;

imshow(grey);

end