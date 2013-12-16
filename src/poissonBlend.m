function [newImg] = poissonBlend(im, mask, new)
    [imh, imw, imdim] = size(new);
    numPixels = imw * imh;
    numGradients = numPixels * 2;
    im2var = zeros(imh, imw);
    im2var(1:numPixels) = 1:numPixels;

    A = sparse(numGradients, numPixels);
    b = zeros(numGradients, 1);
    xLeftMost=imw;
    xRightMost=1;
    yTopMost=imh;
    yDownMost=1;
    for y= 1:imh
        for x= 1:imw
            if (mask(y,x) == 1)
                if (x < xLeftMost)
                    xLeftMost = x;            
                elseif (x > xRightMost)
                    xRightMost = x;   
                end
                if (y < yTopMost)
                    yTopMost = y;    
                elseif (y > yDownMost)
                    yDownMost = y;
                end
            end
        end
    end
    
    newIm  = zeros(imh, imw, imdim);
    for dim = 1:imdim
        e=0;
        for y = yTopMost:yDownMost
            for x = xLeftMost:xRightMost
                if (mask(y,x) == 1)
                    if (x < imw-1)
                        e = e+1;
                        A(e, im2var(y,x)) =- 1;
                        if (mask(y,x+1) == 1)
                            A(e, im2var(y,x+1)) = 1;
                            b(e) = im(y,x+1,dim) - im(y,x,dim);
                        else
                            A(e, im2var(y,x+1)) = 0;
                            b(e) = im(y,x+1,dim) - im(y,x,dim) - new(y,x+1,dim);
                        end
                    end
                    if (x > 1)
                        e=e+1;
                        A(e, im2var(y,x)) =- 1; 
                        if(mask(y,x-1) == 1)
                            A(e, im2var(y,x-1)) = 1;
                            b(e) = im(y,x-1,dim) - im(y,x,dim);
                        else
                            A(e, im2var(y,x-1)) = 0;
                            b(e) = im(y,x-1,dim) - im(y,x,dim) - new(y,x-1,dim);                 
                        end
                    end
                    if (y < imh-1)
                        e = e+1;
                        A(e, im2var(y,x)) =- 1;
                        if (mask(y+1,x) == 1)
                            A(e, im2var(y+1,x)) = 1;
                            b(e) = im(y+1,x,dim) - im(y,x,dim);
                        else
                            A(e, im2var(y+1,x)) = 0;
                            b(e) = im(y+1,x,dim) - im(y,x,dim) - new(y+1,x,dim);
                        end
                    end
                    if (y > 1)
                        e=e+1;
                        A(e, im2var(y,x)) =- 1; 
                        if(mask(y-1,x) == 1)
                            A(e, im2var(y-1,x)) = 1;
                            b(e) = im(y-1,x,dim) - im(y,x,dim);
                        else
                            A(e, im2var(y-1,x)) = 0; 
                            b(e) = im(y-1,x,dim) - im(y,x,dim) - new(y-1,x,dim);
                        end
                    end
                end
            end
        end
        v = A\b;
        newIm(:,:,dim) = reshape(v,imh,imw);
    end

    newImg = zeros(imh, imw, imdim);
    for i = 1:imdim
        newImg(:,:,i) = mask.*newIm(:,:,i) + (1-mask).*new(:,:,i);
    end
end