function ssd = compute_ssd(im1, im2)
    ssd = sum(sum((im1-im2).^2));
%    S_2(:,:,i) = imfilter(I(:,:,i).^2, M);
%    TS2(:,:,i) = imfilter(I(:,:,i), M(:,:,1).*T(:,:,i));
%    ssd(:,:,i) = S_2(:,:,i) - 2* TS2(:,:,i) + Trep;
end