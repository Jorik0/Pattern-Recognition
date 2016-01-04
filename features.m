function e = features(im);
prwarning off;
prwaitbar off;
c = im_features(im,im,'Area');
%'Area','Perimeter'

%c = im_mean(im);
e = testClassifiers(c,10);