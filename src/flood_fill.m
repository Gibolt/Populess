function [ff_mat] = flood_fill(im)
    [~,ff_mat] = bwboundaries(im,'noholes');
end