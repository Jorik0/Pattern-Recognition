function e = moments(im); %give im without 6's or 9's
type = {'none','central','scaled','hu','zer'};
c = [];
for i = 1:size(type,2)
c = [c im_moments(im,type{i})];
end

e = testClassifiers(c,200);