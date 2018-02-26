function makeRepeatedImage(filename)
img = imread(filename);
[r,c,~] = size(img);
smallImg = imresize(img,[round(r/5),round(c/5)]);
newRow = [];
for x = 1:10
    newRow = [newRow, smallImg];
end
newImg = [];
for x = 1:10
newImg = [newImg;newRow];
end
imshow(newImg);
[w,r] = strtok(filename,'.');
newFile = [w,'_smallGrid' r];
imwrite(newImg,newFile)

        
        


end