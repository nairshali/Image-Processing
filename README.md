# Image-Processing
Image Processing

# Application of Spatial and Frequency Domain Filters on Noisy Images for Image Enhancement (using Matlab).
# ABSTRACT
Noise is unwanted information present in an image. Such unwanted information in an image can be removed with filters. In digital image processing, filters can be applied on an image in two ways, which include spatial and frequency domain. This report mainly deals with the application of predefined and user defined filters in both spatial and frequency domain on noisy images. This is done so to identify the efficiency of the filters in terms of enhancing the quality of the image thereby removing the noise present in it. The purpose of this paper is to compare between mean, Gaussian and median filters in spatial domain and Butterworth low Pass Filter (BLPF) and Ideal low Pass Filter (ILPF) within the frequency domain to enhance noisy image and obtain sharper image. The proposed enhanced models were applied on standard noisy pictures and simulated using MATLAB. Experimental results comparing the old and new filters design showed that BLPF outperformed ILPF. Moreover, the new designed filters outperformed the original ones.



# FREQUENCY DOMAIN
# Application of Filters in Frequency Domain
Frequency domain is a term used to describe the analysis of mathematical functions or signals with respect to frequency, rather than time. Frequency domain methods are based on modifying the Fourier transformation of an image and the filters operate on the Fourier transform of an image. 
• The Edges and sharp transitions (e.g. noise) in an image contribute significantly to high frequency content of Fourier transform. 
• Low frequency contents in the Fourier transform are responsible to the general appearance of the image over smooth areas. By suppressing the noise, gradual changes can be seen that were invisible before. Therefore a low-pass filter can sometimes be used to bring out faint details that were smothered by noise.

G (x, y) = h(x, y)*f(x, y)  								(7)
Where g(x, y) is enhanced image. 


# Types of frequency domain filters 
# 1)Low pass filter 
The most basic of filtering operations is called "low-pass". A low-pass filter, also called a "blurring" or "smoothing" filter, averages out rapid changes in intensity. The simplest low-pass filter just calculates the average of a pixel and all of its eight immediate neighbours. The result replaces the original value of the pixel. The process is repeated for every pixel in the image. 
Filtering can be visualized by drawing a “convolution kernel”. A kernel is a small grid showing how a pixel's filtered value depends on its neighbours. To perform a low-pass filter by simply averaging adjacent pixels, the following kernel is used:
 +1/9	+1/9	+1/9
+1/9	+1/9	+1/9
+1/9	+1/9	+1/9

When this kernel is applied, each pixel and its eight neighbours are multiplied by 1/9 and added together. The pixel in the middle is replaced by the sum. This is repeated for each pixel in the image. If we didn't want to filter so harshly, we could change the kernel to reduce the averaging, 


The center pixel contributes half of its value to the result, and each of the four pixels above, below, left, and right of the center contribute 1/8 each. This will have a more subtle effect. By choosing different low-pass filters, we can pick the one that has enough noise smoothing, without blurring the image too much.We could also make the kernel larger. The examples above were 3x3 pixels for a total of nine. We could use 5x5 just as easily, or even more. The only problem with using larger kernels is the number of calculations required becomes very large.

Common low pass filters are :-Ideal Low pass filter ,Butterworth low pass filter, Gaussian low pass filter
# 2) High pass filter 

A high-pass filter can be used to make an image appear sharper. These filters emphasize fine details in the image – exactly the opposite of the low-pass filter. High-pass filtering works in exactly the same way as low-pass filtering; it just uses a different convolution kernel. In the example below, notice the minus signs for the adjacent pixels. If there is no change in intensity, nothing happens. But if one pixel is brighter than its immediate neighbours, it gets boosted.

Unfortunately, while low-pass filtering smoothes out noise, high-pass filtering does just the opposite: it amplifies noise. You can get away with this if the original image is not too noisy; otherwise the noise will overwhelm the image. High-pass filtering can also cause small, faint details to be greatly exaggerated. An over-processed image will look grainy and unnatural, and point sources will have dark donuts around them. So while high-pass filtering can often improve an image by sharpening detail, overdoing it can actually degrade the image quality significantly.

Common high pass filters are:-Ideal high pass filter, Butterworth high pass filter, Gaussian high pass filter
