% starter script for final project
Do_Naive = true;
Do_Median = true;

im1 = im2double(imread('./images/Set2_1_small.jpg')); 
im2 = im2double(imread('./images/Set2_2_small.jpg')); 
im3 = im2double(imread('./images/Set2_3_small.jpg')); 
im4 = im2double(imread('./images/Set2_4_small.jpg'));
im5 = im2double(imread('./images/empty_small.jpg'));

if Do_Naive 
    medImNaive = median_naive(im1, im2, im3, im4, im5);
end

if Do_Median
    medIm = median_im(im1, im2, im3, im4, im5); 
end
