function mask = disparity_mask(mask, im2, range)
    mask = (mask-im2).^2;
    mask(mask>range)=1;
    mask(mask~=1)=0;
end
