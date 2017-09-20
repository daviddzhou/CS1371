%%%
% File: Lect_11_Arrays_Masking.m
%%%
%
%  ADMIN
%
%   Test 1 in 2 weeks
%
%   PRS - still testing today
%       - next week: exam practice
%       - maybe for credit if ...
%
%	Fetching images
%	 - if you want to use the same images used in class, fetch them
%		from DMS Code (right click the file, save as in 
%       your directory)
%	 - if you want to turn your own color image to gray scale:
%		img = imread('your_image');
%		gimg = rgb2gray(img)
%		imwrite(gimg, 'your_gray_scale_file_name')
%
%	
%	CONCEPT
%	 - Manipulating Arrays
%		- slicing - indexing with vectors
%		- masking - indexing logically
%
%	IMPLEMENTATION
%	 - slicing copies a "rectangle" from one array to another
%		B(<B_rows> <B_cols>) = A(<A_rows> <A_cols>)
%		  where each <..> is a vector of row or column indices
%		Rules:
%			either B_rows is the same length as A_rows
%			   and B_cols is the same length as A_cols
%			or the lengths of A_rows and A_Cols are both 1
%	 - masking copies elements from A to B only if they meet a given
%		  logical test. The restriction with masking is that the producer
%		  and consumer arrays have to be the same size
%	 	For example, with A and B obeying the above rules,
%			B(A > 5) = A(A > 5) will copy the values in A greater
%			than 5 to the same relative locations in B leaving the 
%			other elements of B unchanged 
%

clear 
clc 
close all 

%           stretch limo
car = imread('GrayVolta.jpg');
%imshow(car);
front = car(:, 1:100);
back = car(:, 160:end);
mid = car(:, 100:160);
%figure;
%imshow(mid);
%stretch the cols
[rows cols] = size(mid);
fact = 2.564;
colNdx = round(linspace(1, cols, cols .* fact));
newMid = mid(:, colNdx);
%figure;
%imshow(newMid);
%imshow([front newMid back]);


%           one goose in b&W

sky = imread('bwsunset.jpg');
[srows, scols] = size(sky);
figure
imshow(sky);
goose = imread('goose.jpg');
[grows, gcols] = size(goose);
figure
imshow(goose);
%copy goose to middle of sky
%where?
topLeft = [srows/2 scols/2];
rowNdx = topLeft(1): (topLeft(1) + grows - 1);
colNdx = topLeft(2): (topLeft(2) + gcols -1);
%move goose to sky
%sky(rowNdx,colNdx) = goose; horrible 
%grab sky rectangle -> patch
patch = sky(rowNdx, colNdx);
%masl the goose onto the patch
mask = goose < 150;
patch(mask(:, end: (-1,1)) = goose(mask);
figure
imshow(patch);
%put back the patch
sky(rowNdx, colNdx) = patch;
figure
imshow(sky);
