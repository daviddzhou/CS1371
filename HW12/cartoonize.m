function cartoonize( name, factor )
%pull the original file name for use later
[newName,type] = strtok(name,'.'); 
img = imread(name);
%change values to doubles
newImg = double(img);

%separate into layers
r = img(:,:,1); 
g = img(:,:,2); 
b = img(:,:,3); 

r = (round(r/factor))*factor;
g = (round(g/factor))*factor;
b = (round(b/factor))*factor;

newImg(:,:,1) = r;
newImg(:,:,2) = g;
newImg(:,:,3) = b;
newImg = uint8(newImg);
img = [img newImg];
newFile = ['cartoon_' newName type];
imwrite(img, newFile);

end

