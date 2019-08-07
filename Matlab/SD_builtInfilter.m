
%Clear the console screen ,close all the open windows.
clear all; close all; clc
%Begin by reading the original image
porg= imread('C:\Program Files\MATLAB\PenguinOriginal.bmp');

% Now Read distorted image
% Distorted image is 3-D image, having unwanted noise
pout= imread('C:\Program Files\MATLAB\PenguinNoise.bmp');

%create a figure window 
figure;

% subplot (r, c, seq ) rownumber & column number on the plane and sequence or order in
% which the image appears.
subplot(2,3,1);imshow(porg);title('Original Image');
subplot(2,3,2);imshow(pout);title('Noisy Image');

%Basically there are two types of domain, Spatial and frequency for image
%enahncement

%Spatial domain filters include
% 1-Linear Filter (Methods are : Average filter and Gaussian Filter  
    
% Noise reduction using Average filter method
  % using average kernel, 3-by-3 neighborhood.
    h = fspecial('average',[3,3]); % using average kernel, 3-by-3 neighborhood.
    
    % imfilter filters the multidimensional array A with the multidimensional filter h, 
    % Note that imfilter is more memory efficient than some other filtering functions in that it outputs an array of the same data type as the input image array.
    Iavg = imfilter(pout,h); 
    
    % OBSERVANCE : its reduced noise but image is blur
    subplot(2,3,3);imshow(Iavg);title('Average Image');
    
  % Gaussian Filter
    h1 = fspecial('gaussian',[3,3],0.5);
    Igaus = imfilter(pout,h1);
    subplot(2,3,4);imshow(Iavg);title('Gaussian Image');

% 2-Non Linear filter (Methods include :: Median Filter)
  % Noise reduction using median filter
    Imedian = medfilt3(pout);
    % OBSERVANCE :  medfilt2 does a better job of removing noise, with less
    % blurring of edges. 3-D median filtering
    subplot(2,3,5);imshow(Imedian);title('Median Image');
  
% Mean square Error for all the methods

% Calculate MSE / PNSR / SNR - Average Filter
avg = immse(Iavg,pout);
fprintf('\n The mean-square error with average filter %0.4f\n',avg); % %0.4f for formatting
[peaksnr, snr] = psnr(Iavg,pout);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); 
fprintf('\n The SNR value is %0.4f \n', snr);

% Calculate MSE / PNSR / SNR - Guassian Filter
gaus = immse(Igaus,pout);
fprintf('\n The mean-square error with Gaus filter %0.4f\n',gaus); % %0.4f for formatting 
[peaksnr, snr] = psnr(Igaus,pout);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); 
fprintf('\n The SNR value is %0.4f \n', snr);

% Calculate MSE / PNSR / SNR - Median Filter
med = immse(Imedian,pout);
fprintf('\n The mean-square error with median filter %0.4f\n',med);
[peaksnr, snr] = psnr(Imedian,pout);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr); 
fprintf('\n The SNR value is %0.4f \n', snr);
