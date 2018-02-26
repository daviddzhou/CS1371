            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %                  Images                        %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            
                %% How are images stored in matlab?
                
%Images are just 3-dimensional arrays. Everything we talked about with
%arrays still applies. Images in matlab have the class "uint8" this stands
%for "unsigned integer 8-bits". With n bits of information, you can produce
%numbers from 0 -> (2^n) - 1 values. So in this case, with 8 bits all 
%numbers inside of an image uint8 array range from 0 -> 255

        %% But what about colors in an image? How does that happen?
%Every index of an array corresponds to a pixel in an image. However, since
%an image is a 3-dimensional array, every index has also has three layers!
%Each layer represents a specific color channel: 
%layer 1: red
%layer 2: green
%layer 3: blue

%The values inside of the image arrays correspond to different levels of
%intensities of a certain color channel. In order to produce different
%colors, you just need different combinations of intensities per color
%channel. 

%The way these color channels mix together is based off of physical
%properties of LIGHT, not pigments. Information on this can be found at: 
%https://en.wikipedia.org/wiki/Additive_color

%Since values in an image only range from 0->255, you can think of a value
%of 0 at a certain location and layer to mean that there is no intensity
%(or the light of that specific channel is turned off) and 255 as meaning
%the is full intensity. 

%Give a certain pixel, here is a table that shows common color combinations
%of the 3 color-channels.  

%Color   | Red Layer | Green Layer | Blue Layer
%red     |    255    |      0      |     0
%green   |     0     |     255     |     0
%blue    |     0     |      0      |    255
%magenta |    255    |      0      |    255
%cyan    |     0     |     255     |    255
%yellow  |    255    |     255     |     0
%black   |     0     |      0      |     0
%white   |    255    |     255     |    255

%These colors shown are the colors in their fullest and brightest 
%intensities. This means that if I had a pixel that had the following
%values: red = 210, green = 0, blue = 0, this pixel would still be red, but
%not as bright of a red. 


                                %% Uint8 Math
%uint8 values only range from 0 -> 255. Therefore, any math that is done
%on these values will always result with a number that is within this
%range.
%For instance: 
%uint8(200) + 100 --> 255
%uint8(30) - 1000000000 -> 0

%This is important to note because sometimes with images you might want to
%brighten them or darken them by increasing or decreasing values. However,
%in uint8 you are restricted to these values! 

%Many times if you want to do math to an image, you first need to cast your
%values to doubles (using the double function), do your math to them, and
%then convert them back to uint8 (using the uint8 function)

%% Reading in an image
%In order to take an image file and change it into a uint8 3-dimensional
%image array, you can use the function imread

img = imread(''); %(Maria) https://www.instagram.com/majo1018/

%% Writing an image

%imwrite(imgArray,filename)

%% Displaying an image
%If you have a uint8 array that you want to display as an image, you can
%use the imshow or image functions
img = imread('maria.png'); % (Maria) https://www.instagram.com/majo1018/
imshow(img)
title('Using imshow')
figure %opening a new figure so both calls can be seen
image(img)
title('Using image')

                        %% Slicing/Indexing Images
%Indexing images is essentially the same thing as indexing an array.
%However, we now just have to remember that we have 3 different layers. 
%syntax: img(rows,columns,layer)

%%Example: swapQuadrants.m (Phineas & Ferb)
%Suppose I wanted to interchange different quadrants of an image.

%%Example: MakeUgly.m (DJ) https://www.instagram.com/dj_jang9/
%Suppose I wanted to vertically flip a section of an image and put it back
%in the same spot. 


                            %% Resizing Images 
newImg = imresize(imgArr,[newRows,newCols],'method');
newImg = imresize(imgArr,scale,'method');

%%Example: addPictureToSide.m (Kanav) https://www.instagram.com/kanav_garg/
%Suppose I wanted to take 2 pictures and put them next to each other?

%%Example: stretchMiddleThird.m 
%(Denise) https://www.instagram.com/thatdenise_girl/
%(Jackie) https://www.instagram.com/skate_jackie/
%Suppose I wanted to vertically stretch the middle third of an image by a
%verticle scale.
              
                            
                            %% Masking Images 
                            
%Masking is the same as it was before. You can access certain colored
%pixels by creating masks in order to find an index with certain red,
%green, and blue values. 


%% Example: black2White.m
%Change all black pixels to white 


%% Example: moveBlackPixels.m
%Move all black pixels from one image to the same spots in
%another image

%% Example: greenScreen.m 
%given an image when a green screen background, replace the green with
%another image

%Neel https://www.instagram.com/n.narvekar/
%Sean https://www.instagram.com/seanmlevine/

                        %% Swapping Color Layers
%Seeing as Matlab just sees an image as 3 layers (red,green,blue) of values
%between 0->255, if you change the order of the layers the colors of the
%image will change. 

%For instance, if I have an image that is just 1 pixel that is pure cyan
%(r: 0, g: 255, b: 255) and I chose to change the layers around like: 

%img = img(:,:,[2 1 3]); 

%This would mean my 2nd layer becomes my first, my 1st layer becomes my
%second, and my 3rd layer stays the same. So in essence I have the new rgb
%values of (r: 255, g: 0, b: 255) which is a pure magenta pixel


                            %% Gray Scale
%"Grey" is produced in when the r,g,b values at a certain pixel are all the
%same value. Therefore, black is the darkest shade of grey and white is the
%lighest shade of grey. In essence, a grey scaled image displays the
%intensity of a pixel. Therefore a brighter red would be closer to white in
%a grey scaled image than a darker red. We determine the intensity of a
%pixel by taking the average of its r,g,b values. However, we have to
%remember that uint8 math does not allow us to go over 255. So, values
%should be changed to doubles first, and then averaged, and then changed
%back to uint8. 


%code is in greyScale.m


%%Using grey scale to make warhol-type image
%grey scale allows you to see the intensity of an image. Therefore, we can
%change areas of the image that have similar intensities to the same color.
%This can make a warhol-type image. 

warhol('')


                            %% Negative 

% negImage = 255 - img;
close all
img = imread('');
imshow(img)
negImage = 255 - img;
figure
imshow(negImage)

                          %% Rotating Image
close all
filename = 'buzz.png';
img = imread(filename);
subplot(2,2,1)
imshow(img)
title('Original image')


%Rotating by 90 clockwise
%transpose layers
r = img(:,:,1)'; 
g = img(:,:,2)'; 
b = img(:,:,3)';
newImg = cat(3,r,g,b);
rot90ClockWise = newImg(:,end:-1:1,:);
subplot(2,2,2)
imshow(rot90ClockWise)
title('Rotate 90 Degrees Clockwise')

%Rotating by 180
rot180 = img(end:-1:1,end:-1:1,:); %reverse rows and columns
%figure 
subplot(2,2,3)
imshow(rot180);
title('Rotate 180 Degrees Clockwise')


%rotating 270 clock wise
r = img(:,:,1)'; 
g = img(:,:,2)'; 
b = img(:,:,3)';
newImg = cat(3,r,g,b);
rot270ClockWise = newImg(end:-1:1,:,:);
%figure
subplot(2,2,4)
imshow(rot270ClockWise)
title('Rotate 270 Degrees Clockwise')


%% Test Examples 












