function getConfMatrix(x,size,classifier)
[tr tst] = gendat(x,ones(1,10)*size);
c = tr*classifier;
confmat(tst*c)
end

