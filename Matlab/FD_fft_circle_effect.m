%Code to implement ideal low pass filter in frequency domain

close all;
clear all;
clc;

% read original image file into variable ImOrg
Im = imread('C:\Program Files\MATLAB\PenguinNoise.bmp');
% read noisy image file into variable Im
Im = rgb2gray(Im);

%plot image
figure;
subplot(2,3,1);imshow(Im);title('Noisy Image');

% Fourier Transform and centered
FtIm = fftshift(fft2(Im)); 
% Plot image
subplot(2,3,2);imshow(FtIm);title('Fourier Transformed Image ');

% display fourier transformed image
disftim = fftshow(FtIm);
subplot(2,3,3);imshow(disftim);title('Fourier Transformed Image for display');

% Circle filter

% size of image
h = size(Im,1);
w = size(Im,2);

% generate meshgrid, same size of input image
[X,Y] = meshgrid(-floor(w/2):floor(w-1)/2, -floor(h/2):floor(h-1)/2);
z = sqrt(X.^2 + Y.^2);

% cutoff of 45
z = z<45;

% display filter image
disftim = fftshow(z);
subplot(2,3,4);imshow(disftim);title('Low Pass filter - Circle effect');

% Apply filter
FtImz = FtIm.*z;
% display fourier transformed image post filter 
disftim = fftshow(FtImz);
% plot image
subplot(2,3,5);imshow(disftim);title('FT image post applying filter');

% Inverse Fourier Transform 
FtImz1 = ifft2(FtImz);
% display inverse of fourier transformed image.
disftim = ifftshow(FtImz1);
% plot image
subplot(2,3,6);imshow(disftim);title('Inv Ft');

% Calculate MSE / PNSR / SNR 
lp = immse(disftim,Im);
fprintf('\n The mean-square error with lp filter %0.4f\n',lp); 
[peaksnr, snr] = psnr(disftim, Im);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); 
fprintf('\n The SNR value is %0.4f \n', snr);

