% starter script for project 3
DO_X = true;

if DO_X 
    im1 = im2double(imread('./images/Set2_1.JPG')); 
    im2 = im2double(imread('./images/Set2_2.JPG')); 
    im3 = im2double(imread('./images/Set2_3.JPG')); 
    im4 = im2double(imread('./images/Set2_4.JPG'));
    medIm = median_im(im1, im2, im3, im4);
    figure(1), hold off, imshow(medIm);
end
