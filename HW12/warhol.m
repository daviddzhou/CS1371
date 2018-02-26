function warhol(filename)
greyImage = greyScale(filename);

%make 4 copies of the grey image
images = {greyImage,greyImage,greyImage,greyImage};


for x = 1:length(images)
current = images{x};    
avg = current(:,:,1);

%find tresholds of intensities to change to different colors
color1 = avg <85;
color2 = avg >= 85 & avg <170;
color3 = avg >=170;

%separate into layers
rlayer = current(:,:,1);
glayer = current(:,:,2);
blayer = current(:,:,3);

%place random colors at each of those locations 
rlayer(color1) = uint8(rand(1,1)*255);
glayer(color1) = uint8(rand(1,1)*255);
blayer(color1) = uint8(rand(1,1)*255);

rlayer(color2) = uint8(rand(1,1)*255);
glayer(color2) = uint8(rand(1,1)*255);
blayer(color2) = uint8(rand(1,1)*255);

rlayer(color3) = uint8(rand(1,1)*255);
glayer(color3) = uint8(rand(1,1)*255);
blayer(color3) = uint8(rand(1,1)*255);

%put the image back together
out = cat(3,rlayer,glayer,blayer);
images{x} = out;

end

%concatenate images to make 2x2
WarholPic = [images{1},images{2};images{3},images{4}];
figure
image(WarholPic)

end
