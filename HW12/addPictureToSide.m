function addPictureToSide(origPicFile, sidePicFile) 
%read in images
origPic = imread(origPicFile);
sidePic = imread(sidePicFile);

%change the side pic to the same size as the original
[r,c,~] = size(origPic);
sidePic = imresize(sidePic,[r,c]);

%put the new pic on the left of the old
finalPic = [sidePic, origPic];

%show the image
imshow(finalPic);

end