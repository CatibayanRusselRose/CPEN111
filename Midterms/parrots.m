close all;
clear all;
clc;

pkg load image;
parrots = imread ('C:\CPEN111\parrots.jpg');
whos parrots;
grayscale_parrot = rgb2gray(parrots);
subplot (1,2,1), imshow(parrots), title ('Original Image');
subplot (1,2,2), imshow(grayscale_parrot), title ('Grayscale Image');
