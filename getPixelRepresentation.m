function [dataset] = getPixelRepresentation(im)
im = im_box(im,0,1);
im = im_resize(im,[8 8]);
dataset = prdataset(im);
end

