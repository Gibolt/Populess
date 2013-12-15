function [blob_im] = find_blobs(im)
    [h,w] = size(im);
    blob_im = zeros(h,w);
    msk = ones(11,11);
    immsk = imfilter(im,msk);
    immsk(immsk<60)=0;
    immsk(immsk~=0)=1;
%    for x = 2:h-1
%        for y = 2:w-1
%            if im(x,y)>0.5
%                a = im(x,y-1) + im(x-1,y) + im(x-1,y-1) + im(x,y);
%                blob_im(x,y) = a;
%            end
%        end
%    end
    
    blob_im = immsk;
    %blob_im = (blob_im*256)/max(max(blob_im));
end