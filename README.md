# Image-Processing
Image Processing

# Application of Spatial and Frequency Domain Filters on Noisy Images for Image Enhancement (using Matlab).
# ABSTRACT
Noise is unwanted information present in an image. Such unwanted information in an image can be removed with filters. In digital image processing, filters can be applied on an image in two ways, which include spatial and frequency domain. This report mainly deals with the application of predefined and user defined filters in both spatial and frequency domain on noisy images. This is done so to identify the efficiency of the filters in terms of enhancing the quality of the image thereby removing the noise present in it. The purpose of this paper is to compare between mean, Gaussian and median filters in spatial domain and Butterworth low Pass Filter (BLPF) and Ideal low Pass Filter (ILPF) within the frequency domain to enhance noisy image and obtain sharper image. The proposed enhanced models were applied on standard noisy pictures and simulated using MATLAB. Experimental results comparing the old and new filters design showed that BLPF outperformed ILPF. Moreover, the new designed filters outperformed the original ones.

# INTRODUCTION
Noise present in an image affects the originality of the image and makes the process of interpretation of the image more difficult. Generally, an image gets affected by noise during its acquisition, transmission and storage.  There are several ways that noise can be introduced into an image, depending on how the image is created. For example:-
•	If the image is scanned from a photograph made on film, the film grain is a source of noise. Noise can also be the result of damage to the film, or be introduced by the scanner itself. 
•	If the image is acquired directly in a digital format, the mechanism for gathering the data (such as a CCD detector) can introduce noise. 
•	 Electronic transmission of image data can introduce noise.  
 Based on its nature, noise can be modelled as either an additive or a multiplicative process. 
                         𝑔 𝑥, = 𝑓 𝑥,𝑦 + 𝑛(𝑥,𝑦)                                   𝑔 𝑥,𝑦 = 𝑓 𝑥,𝑦 ∗ 𝑛(𝑥,𝑦)           (1)
Where f x,y  - Original image, n(x,y) - Noise, g x,y  -Noisy image. 
The above notations (1) represent both the additive and multiplicative noise models. All such types of noise present in an image can be removed with filters. 
A filter is a technique with which certain frequency components can be chosen or rejected.  The spatial domain filter and frequency domain filters are the most important tools in an image processing. These filters refer to the image plane itself and operate directly on the image pixels and Fourier transformed image respectively. They can be characterized as linear (Average and Gaussian) and non-linear filters (Median) in spatial domain and Low pass and high pass filters in frequency domain.This study mainly deals with the application of filters which include Mean, Median, Gaussian, Low pass and high pass filters on noisy images, and the calculation of MSE (Mean square error) and PSNR(Point to signal Ratio) on the filtered images with a view to identifying the efficiency of these filters in terms of minimizing noises present in the image.

# SPATIAL DOMAIN
Application of Filters in Spatial domain

A filter is something that attenuates or enhances particular frequencies easiest to visualize in the domain. Image filters have a wide variety of uses such as noise removal and edge enhancement; It creates an embossed appearance making the image appear crisper and sharper.
The term Filter in “Digital image processing” is referred to the sub image. There are others term to call sub image such as mask, kernel, template or window .The value in a filter sub image is referred as coefficients rather than pixels. 
Mean Filter
Spatial domain represents an important enhancement technique that can effectively be used to remove various types of noise in digital images. These spatial filters typically operate on small neighbourhood 3 x 3 to 11 x 11 . Mean filters are the most common spatial filters used as a simple method for reducing noise in an image, particularly Gaussian noise.  The idea of mean filtering is simply to replace each pixel value in an image with the mean ‘average’ value of its neighbours, including itself. The extracted average values are the result of the convolution process, which is commonly based on specified fixed convolution mask (kernel). Differently sized kernels containing different patterns of number achieve different results under convolution. By increasing the size of the mean filter to 5 x 5, the obtained image will be characterized with less noise.
 In general, linear ﬁltering of an image f of size M x N with a ﬁlter mask of size m x n is given by the expression
		                  a   b
                       g(x,y)=    ∑  ∑  w(s,t)f(x+s,y+t) 					(2)
                                    s=-a t=−b
where a=(m-1)/2 and b=(n-1)/2; m x n (odd numbers) for x=0,1,…,M-1 and y=0,1,…,N-1 . The process is also called convolution (used primarily in the frequency domain) 
Figure (1) depicts the Noisy image and output image after applying Mean filter

Gaussian Filter
Gaussian filtering is used to blur images and remove noise and detail. The Gaussian function is used in numerous research areas: – It defines a probability distribution for noise or data. 
•	It is a smoothing operator. 
•	It is used in mathematics.
Gaussian filtering is more effective at smoothing images. It has its basis in the human visual perception system. It has been found that neurons create a similar filter when processing visual images.
In one dimension, the Gaussian function is:
 								(3)
In two dimensions, it is the product of two such Gaussians, one per direction:
 								(4)
Where x is the distance from the origin in the horizontal axis, y is the distance from the origin in the vertical axis, and σ is the standard deviation of the Gaussian distribution.
Figure (1)depicts the Noisy image and output image after applying Gaussian filter

Median Filter
In average filters, according to a defined average criterion, the average value of the neighbouring pixels is calculated and this value is put to the center pixel location. Ordered filters are usually used to filter salt and pepper noises, negative exponential noises and Raleigh distributed noises.  Average filters are used to remove Gauss distributed noises or uniform distributed noises, the most effective ordered filter is median filter. With this filter, gray-level values in a chosen neighbourhood are sorted in the ascending manner. Center pixel of the mask is replaced with the median value of the ordered gray-levels. With sorting operation, noise valued pixels will be either on the head of the array or in the end of the array with a greater probability and the median value will not be a noise point with high probability. If there is a noise point in the center of the mask and if it’s replaced with median value, then the noise could be filtered out.
Unlike the mean filter, the median filter is non-linear. This means that for two images A(x) and B(x): 

 				(5)
Figure (1) depicts the Noisy image and output image after applying Median filter


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
