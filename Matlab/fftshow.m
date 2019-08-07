%Fourier transformed code
function [ out ] = fftshow(f)
 f1 = log( 1 + abs(f) );
 fm = max(f1(:));
%  figure, imshow(im2uint8(f1/fm));
out = im2uint8(f1/fm);
end
