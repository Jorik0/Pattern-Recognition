function im = standard(im)
%im = prnist([0:9],[1:40:100]);
im = im_box(im,0,1);
%rotate = im_rotate(box);
im = im_resize(im,[20 20]);

