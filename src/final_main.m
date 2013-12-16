% starter script for final project
addpath sift
Do_Naive = false;
Do_Median = true;
Do_Align = false;

%im1 = im2double(imread('./images/Set2_1_small.jpg')); 
%im2 = im2double(imread('./images/Set2_2_small.jpg')); 
%im3 = im2double(imread('./images/Set2_3_small.jpg')); 
%im4 = im2double(imread('./images/Set2_4_small.jpg'));

%im1 = im2double(imread('./images/off2.jpg'));
%im2 = im2double(imread('./images/off3.jpg'));
%im3 = im2double(imread('./images/off4.jpg'));
%im4 = im2double(imread('./images/off5.jpg'));

im1 = im2double(imread('~/Desktop/university_pictures 2/IMG_3346.JPG'));
im2 = im2double(imread('~/Desktop/university_pictures 2/IMG_3347.JPG'));
im3 = im2double(imread('~/Desktop/university_pictures 2/IMG_3348.JPG'));

im6 = im2double(imread('~/Desktop/university_pictures 2/IMG_3351.JPG'));
im7 = im2double(imread('~/Desktop/university_pictures 2/IMG_3352.JPG'));
im8 = im2double(imread('~/Desktop/university_pictures 2/IMG_3353.JPG'));

im10 = im2double(imread('~/Desktop/university_pictures 2/IMG_3355.JPG'));
im11 = im2double(imread('~/Desktop/university_pictures 2/IMG_3356.JPG'));
im12 = im2double(imread('~/Desktop/university_pictures 2/IMG_3357.JPG'));
im13 = im2double(imread('~/Desktop/university_pictures 2/IMG_3358.JPG'));
im14 = im2double(imread('~/Desktop/university_pictures 2/IMG_3359.JPG'));
im15 = im2double(imread('~/Desktop/university_pictures 2/IMG_3360.JPG'));




if Do_Align
    aligned_images = image_align(im1, im2, im3, im4);
end

if Do_Naive 
    medImNaive = median_naive(im1, im2, im3, im4);
end

if Do_Median
    medIm = median_im(im1, im3,im6, im7 , im10,  im13);
%    mI_hsv = rgb2hsv(medIm);
    
%    im1_hsv = rgb2hsv(im1);
%    im2_hsv = rgb2hsv(im2);
%    im3_hsv = rgb2hsv(im3);
%    im4_hsv = rgb2hsv(im4);
   
    % HSV channel 3 is the most informative. So far.
    % Potentially ycbrc channel 2 
    
%    i1m  = disparity_mask(mI_hsv(:,:,3),im1_hsv(:,:,3),0.001);
    
%    i2m = disparity_mask(mI_hsv(:,:,3),im2_hsv(:,:,3),0.001);
    
%    i3m = disparity_mask(mI_hsv(:,:,3),im3_hsv(:,:,3),0.001);
    
%    i4m = disparity_mask(mI_hsv(:,:,3),im4_hsv(:,:,3),0.001);
    
%    cm = i1m + i2m + i3m +i4m;
    
%    c= cm;
%    cm(cm>0) = 1;
%    blob = find_blobs(cm);
%    blob = blob(:,1:110);
%    [imp1,tot1] = bestBlend(im1(:,1:110,:), blob, medIm(:,1:110,:));
%    [imp2,tot2] = bestBlend(im2(:,1:110,:), blob, medIm(:,1:110,:));
%    [imp3,tot3] = bestBlend(im3(:,1:110,:), blob, medIm(:,1:110,:));
%    [imp4,tot4] = bestBlend(im4(:,1:110,:), blob, medIm(:,1:110,:));
    
%    figure(1), imshow(imp1);
%    figure(2), imshow(imp1);
%    figure(1), imshow(imp1);
    
end
