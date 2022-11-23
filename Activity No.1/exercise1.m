close all;
clear all;
clc

pkg load image;


% Read the image information
Original_Image = imread('fruits.png');
subplot(231);
imshow(Original_Image);
title('Original Image')

% Reduce the spatial resolution
Original_Image_1 = imresize(imresize(Original_Image,1/32),32);
subplot(232);
imshow(Original_Image_1);
title('32x32 Resolution');
imwrite(Original_Image_1,'fruits2.png');

% Change the colore image to HSV
change_color = rgb2hsv(Original_Image);
subplot(233)
imshow(change_color);
% Display converted version (HSV)
title('RGB to HSV');
imwrite(change_color,'fruits3.png');



