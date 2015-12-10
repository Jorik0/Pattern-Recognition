function e = moments(im); 
%type = {'none','central','scaled','hu','zer'};
type = {'none'};
c = [];

sets = {[0 1 2 3 4],[0 1 2 3 4]};
[x y] = ndgrid(sets{:});
cartProd = [x(:) y(:)];

for i = 1:size(type,2)
c = [c im_moments(im,type{i},cartProd)];
end

e = testClassifiers(c,200);