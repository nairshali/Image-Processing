%Fourier transform inverse
function [ out ] = ifftshow(f)
% absolute value
 f1 = abs(f);
% magnitude 
 fm = max(f1(:));
%  figure,imshow(im2uint8(f1/fm));
 out = im2uint8(f1/fm);
end
