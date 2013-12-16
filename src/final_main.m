% starter script for final project
Do_Naive = false;
Do_Median = true;

im1 = im2double(imread('./images/Set2_1_small.jpg')); 
im2 = im2double(imread('./images/Set2_2_small.jpg')); 
im3 = im2double(imread('./images/Set2_3_small.jpg')); 
im4 = im2double(imread('./images/Set2_4_small.jpg'));

if Do_Naive 
    medImNaive = median_naive(im1, im2, im3, im4);
end

if Do_Median
    medIm = median_im(im1, im2, im3, im4);
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
