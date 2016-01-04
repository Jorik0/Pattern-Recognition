function [ds] = getPixelRepresentation(im)
im = im_box(im,0,1);
im = im_resize(im,[20 20]);
ds = prdataset(im);
end

