% starter script for project 3
DO_X = true;

if DO_X 
%    im1 = im2double(imread('./samples/Nature_1.jpg')); 
    im2 = im2double(imread('./samples/Nature_4.jpg')); 
%    im3 = im2double(imread('./samples/Nature_3.jpg')); 
    medIm = median_im(im1, im2, im3);
    figure(1), hold off, imshow(medIm);
end
