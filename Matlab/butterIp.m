function [ out ] = butterlp ( image, cutoff, ord  ) 

 % size of image
 h = size(image,1);
 w = size(image,2);
 
 % generate meshgrid, same size of input image
 [X,Y] = meshgrid( -floor(w/2):floor(w-1)/2, -floor(h/2):floor(h-1)/2);
 
 % high pass butter worth filter
 hp = 1./ ( 1 + (cutoff ./( X.^2 + Y.^2 ).^0.5 ).^(2*ord) ) ;
 
 %out=hp;  % high pass filter output.
 
 % Low pass filter output.
 out = 1 - hp; 
 
end
 
 
