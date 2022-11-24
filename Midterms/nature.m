clc;
clf;
close all;
clear all;
pkg load image;

NatureImg = imread('nature.jpg');  % Read the image information
whos NatureImg;
imwrite(NatureImg, 'nature.png')

grayscale_nature = rgb2gray(NatureImg);
whos grayscale_nature;


nature_red = NatureImg;
nature_red(:,:,2)=0;
nature_red(:,:,3)=0;
imwrite(nature_red,'nature_red.png');

nature_green=NatureImg;
nature_green(:,:,1)=0;
nature_green_green(:,:,3)=0;
imwrite(nature_green,'nature_green.png');

nature_blue=NatureImg;
nature_blue(:,:,1)=0;
nature_blue(:,:,2)=0;
imwrite(nature_blue,'nature_blue.png');


subplot(2,2,1),imshow(NatureImg),title('original image');%print original image.
subplot(2,2,2),imshow(nature_red),title('red image');%print gray image.
subplot(2,2,3),imshow(nature_green),title('green image');%print gray image.
subplot(2,2,4),imshow(nature_blue),title('blue image');%print gray image.
