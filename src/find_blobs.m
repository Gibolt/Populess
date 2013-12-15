function [blob_im] = find_blobs(im)
    [h,w] = size(im);
    blob_im = zeros(h,w);
   
    for x = 2:h-1
        for y = 2:w-1
            if im(x,y)>0.5
                a = blob_im(x,y-1) + blob_im(x-1,y) + blob_im(x-1,y-1) + im(x,y)
                blob_im(x,y) = a;
            end
        end
    end
    
    %blob_im;
    %blob_im = (blob_im*256)/max(max(blob_im));
end