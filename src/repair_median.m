function [med, best] = repair_median(mask, ims, med)
    [w,h,dim,num] = size(ims);
	[left, right, top, bottom] = bounding_box(mask);
	bestIm = 1; bestTotal = 100000000;
	for n = 1:num
		total = bestBlend(ims(:,:,:,n), mask, med);
		if total < bestTotal
			bestTotal = total;
			bestIm = n;
		end
	end

	[med, bestIm] = poissonBlend(ims(:,:,:,bestIm), mask, med);
end