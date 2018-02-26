function narutoRun( image, location )
[locName,~] = strtok(location, '.');
newName = ['RunAcross' locName 'NarutoStyle.png'];
runningImg = imread(image);
runningLoc = imread(location);
[row, col, ~] = size(runningImg);
runningLoc = imresize(runningLoc,[row,col]);
%separate the layers of color
r = runningImg(:,:,1); 
g = runningImg(:,:,2);
b = runningImg(:,:,3);
%find the top left most column's color
r1 = runningImg(1,1,1);
g1 = runningImg(1,1,2);
b1 = runningImg(1,1,3);
%now create the mask for that color so you can mask onto location image
mask = (r==r1) & (g == g1) & (b == b1);
smask = cat(3,mask,mask,mask);
%now you can mask! how freaking fun
runningImg(smask) = runningLoc(smask);
%now you can create the file
imwrite(runningImg, newName)
end

