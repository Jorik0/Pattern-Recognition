function cds = customFeatures(ds)
images = data2im(ds);

s = size(images,4);

f = zeros(s,4);

for i = 1:s
   f(i,:) = quadrants(squeeze(images(:,:,:,i))); 
end

cds = prdataset(f,getlab(ds));
end

