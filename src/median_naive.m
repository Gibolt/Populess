function [medIm] = median_naive(varargin)
    [~,vars] = size(varargin);
    if vars > 0
        X = zeros(size(varargin{1}));
        for n = 1:vars
            X(:,:,:,n) = varargin{n};
        end
        medIm=median(X,4);
    end
end