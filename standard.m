function x = standard(a)
%figure;
box = im_box(a,0,1);
rotate = im_rotate(box);
%resize = im_resize(rotate,[25 25])
%show(rotate);
x = rotate;