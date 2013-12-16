function [medIm] = median_im(varargin)
    [~, vars] = size(varargin);
    [w,h,dim] = size(varargin{1});
    if vars > 0
        ims = zeros(w, h, dim, vars);
        for n = 1:vars
            ims(:,:,:,n) = varargin{n};
        end
        medIm=median(ims,4);
		medImHsv = rgb2hsv(medIm);

        disparity_masks = zeros(w, h, vars);
        for n = 1:vars
            % HSV channel 3 is the most informative.
			imHsv = rgb2hsv(ims(:,:,:,n));
            disparity_masks(:,:,n) = disparity_mask(medImHsv(:,:,3),imHsv(:,:,3),0.001);
        end
        sumMask = sum(disparity_masks, 3);
		sumMask(sumMask>0) = 1;

		blob = find_blobs(sumMask);
		blob = flood_fill(blob);
        numBlobs = max(max(blob));
        for n = 1:numBlobs
            oneBlob = blob;
            oneBlob(oneBlob ~= n) = 0;
            oneBlob(oneBlob == n) = 1;
			[medIm, ~] = repair_median(oneBlob, ims, medIm);
        end
    end
end