function popArt( name )
img = imread(name);
%find the negative image
negImage = 255 - img;
%find the mirror image and red and blue layers switched
mirrorFlip = img(:,end:-1:1,:);
mirrorFlip = mirrorFlip(:,:,[3 2 1]);
%grayscale
greyImg = double(img);
%separate into layers
r = greyImg(:,:,1); 
g = greyImg(:,:,2); 
b = greyImg(:,:,3); 
%other way without changing to uint8
avg = r/3 + g/3 + b/3;
%turn back to uint8
avg = uint8(avg);
%grey image 
grey = cat(3,avg,avg,avg);
greyImg = grey;
%rotate90degres
r = img(:,:,1)'; 
g = img(:,:,2)'; 
b = img(:,:,3)';
newImg = cat(3,r,g,b);
rot90Img = newImg(:,end:-1:1,:);

finalImg = [mirrorFlip, negImage;
            greyImg, rot90Img];
[filename, filetype] = strtok(name, '.');
newName= [filename '_pop' filetype];
imwrite(finalImg, newName);

end

