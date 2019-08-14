%Butter worth high pass and low pass filter

close all;
clear all;
clc;

% read original image file into variable ImOrg
ImOrg = imread('C:\Program Files\MATLAB\PenguinOriginal.bmp');

% read noisy image file into variable Im
Im = imread('C:\Program Files\MATLAB\PenguinNoise.bmp');
% convert it into gray format
Im = rgb2gray(Im);

% plot image
Figure;
subplot(2,3,1);imshow(ImOrg);title('Original Image');
subplot(2,3,2);imshow(Im);title('Noisy Image');
