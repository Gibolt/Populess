function [medIm] = robust_median(varargin)
    [~, vars] = size(varargin);
    [w,h,dim] = size(varargin{1});
    for i = 1:w
        for j = 1:h
            
        end
    end
        medIm=mode(ims,4);
		medImHsv = rgb2hsv(medIm);
end