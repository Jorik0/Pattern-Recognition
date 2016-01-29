function c = features(im);
prwarning off;
prwaitbar off;
c1 = im_features(im,im,'all');

sets = {[0 1 2 3 4],[0 1 2 3 4]};
[x y] = ndgrid(sets{:});
cartProd = [x(:) y(:)];

c2 = im_moments(im,'none',cartProd);
c3 = im_moments(im,'central',cartProd);

sets = {[0 1 2 3 4 5 6 7 8 9],[0 1 2 3 4 5 6 7 8 9]};
[x y] = ndgrid(sets{:});
cartProd = [x(:) y(:)];

c4 = im_moments(im,'scaled',cartProd);
c5 = im_profile(im);
c = [c1 c2 c3 c4 c5];

