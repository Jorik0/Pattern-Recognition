%best score 0.084

function e = combine(im); 
prwarning off;

sets = {[0 1 2 3 4],[0 1 2 3 4]};
[x y] = ndgrid(sets{:});
cartProd = [x(:) y(:)];

f1 = im_moments(im,'none',cartProd);

f1 = f1(:,1:24); 

f2 = im_features(im,im,'all');


f3 = im_moments(im,'central',cartProd);

%%%%%%%%%%%%%%%%%%%%%%%%

% for i=1:20
%     [~,~,I(:,i),J(:,i)] = gendat(im,ones(1,10)*200);
% end
for i = 1:10
[train1,test1,I,J] = gendat(f1,ones(1,10)*200);
train2 = f2(I,:); test2 = f2(J,:);
train3 = f3(I,:); test3 = f3(J,:);

w1 = qdc(train1)*classc;
w2 = loglc(train2) *classc;
w3 = qdc(train3) *classc;

v = [w1; w2;w3]*meanc;
ee(i) = [test1 test2 test3] *v *testc;
end

e = mean(ee)






