function [medIm] = image_align(varargin)
    [~, vars] = size(varargin);
    [w,h,dim] = size(varargin{1});
    if vars > 0
        %ims = zeros(w, h, dim, vars);
        descriptors = cell(vars,1);
        for n = 1:vars
            [f,d] = sift(rgb2gray(varargin{n}));
            descriptors{n} = d;
        end
        
    end
end