function [dataset] = getPixelRepresentation(im)
im = im_box(im,0,1);
im = im_resize(im,[20 20]);
dataset = prdataset(im);
end

