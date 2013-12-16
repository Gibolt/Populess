function [total] = bestBlend(im, mask, new)
    [imh, imw, imdim] = size(new);
    total = 0;
    for dim = 1:imdim
        for y = 1:imh
            for x = 1:imw
                if (mask(y,x)==1)
                    if (x < imw-1)
                        val = max(im(y,x+1,dim) - im(y,x,dim), new(y,x+1,dim) - new(y,x,dim));
                        if (mask(y,x+1) ~= 1)
                            val = val - new(y,x+1,dim);
                        end
                        total = total + val;
                    end
                    if (x > 1)
                        val = max(im(y,x-1,dim) - im(y,x,dim), new(y,x-1,dim) - new(y,x,dim));
                        if(mask(y,x-1) ~= 1)
                            val = val - new(y,x-1,dim);
                        end
                        total = total + val;
                    end
                    if (y < imh-1)
                        val = max(im(y+1,x,dim) - im(y,x,dim), new(y+1,x,dim) - new(y,x,dim));
                        if (mask(y+1,x) ~= 1)
                            val = val - new(y+1,x,dim);
                        end
                        total = total + val;
                    end
                    if (y > 1)
                        val = max(im(y-1,x,dim) - im(y,x,dim), new(y-1,x,dim) - new(y,x,dim));
                        if(mask(y-1,x) ~= 1)
                            val = val - new(y-1,x,dim);
                        end
                        total = total + val;
                    end
                end
            end
        end
    end
end