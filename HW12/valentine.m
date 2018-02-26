function valentine(file)
img = imread(file); %read in file
TL = img(1:end/2,1:end/2,:); %index top left
[r,c,~] = size(img);
TR = imresize(img,[r*.5,c*.5]); %resize to be half rows and half cols
BL = img(end/2+1:end,1:end/2,:);
BL = 255 - BL; %take the negative

BR = img(end/2+1:end,end/2+1:end,:);
r = BR(:,:,1);
g = BR(:,:,2);
b = BR(:,:,3);
mask = r == 255 & g == 255 & b == 255;
r(mask) = 255;%not needed because it already is 255
g(mask) = 0;
b(mask) = 255; %not needed because it already is 255 
BR = cat(3,r,g,b);
final = [TL TR; BL BR];
imwrite(final,'valentines_card.png');

end