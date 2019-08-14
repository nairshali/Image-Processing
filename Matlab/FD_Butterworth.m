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

% Fourier Transform and centered
af = fftshift(fft2(Im));

% calling function butterlp with input as image, cutoff value and order
%Butterworth Low pass filter
lp = butterlp(Im, 10 , 0.25); %10,0.25

% Apply Filter
aflp = af.*lp;
% display fourier transformed image post filter 
disftim = fftshow(aflp);
% plot image
subplot(2,3,3);imshow(disftim);title('Butterworth image post applying filter');

% Inverse Fourier Transform
aflpi = ifft2(aflp);
% display inverse of fourier transformed image.
disftim = ifftshow(aflpi);
% plot image 
subplot(2,3,4);imshow(disftim);title('Butterworth Inv Ft');

% Calculate MSE / PNSR / SNR 
Bwlp = immse(disftim,Im);
fprintf('\n The mean-square error with lp filter %0.4f\n',Bwlp); 
[peaksnr, snr] = psnr(disftim, Im);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); 
fprintf('\n The SNR value is %0.4f \n', snr);

