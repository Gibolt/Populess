function [medIm] = median_im(varargin)
    [~,vars] = size(varargin);
    if vars > 0
        X = zeros(size(varargin{1}));
        for n = 1:vars
            X(:,:,:,n) = varargin{n};
        end
        medIm=median(X,4);
%        ssd1 = compute_ssd(medIm(:,:,1), varargin{2}(:,:,1));
%        ssd2 = compute_ssd(medIm(:,:,1), varargin{1}(:,:,1));

%        im1 = rgb2ycbcr(medIm);
%        im2 = rgb2ycbcr(varargin{2});
%        im1 = rgb2hsv(medIm);
%        im2 = rgb2hsv(varargin{2});
%        mask = disparity_mask(im1(:,:,1), im2(:,:,1), .05);
%        imshow(mask);
    %rgb2ycbcr()
    end
end