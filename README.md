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
