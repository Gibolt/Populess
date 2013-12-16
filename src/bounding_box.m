function [xLeftMost, xRightMost, yTopMost, yDownMost] = bounding_box(mask)
    [imh,imw] = size(mask);
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
    if xLeftMost > 1;
        xLeftMost = xLeftMost - 1;
    end
    if xRightMost < imw;
        xRightMost = xRightMost + 1;
    end
    if yTopMost > 1;
        yTopMost = yTopMost - 1;
    end
    if yDownMost < imh;
        yDownMost = yDownMost + 1;
    end
end