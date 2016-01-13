function featureEval(ds,modifier,classifiers,size,featsizes)
ntimes = 4;

if(~exist('featsizes', 'var'))
    featsizes = [1,10,50,150,200,250,300,350,400];
end

error = 0;
aError = 0;
for i = 1:ntimes
    [train, test] = gendat(ds,ones(1,10)*size);
    w = train*modifier;
    E = clevalf(train*w,classifiers,featsizes,ones(1,10)*size,1,test*w);
    
    error = error + E.error;
    aError = aError + E.apperror;
    fprintf('Experiment %d/%d complete\n',i,ntimes);
end

E.error = error/ntimes;
E.apperror = aError/ntimes;
E.ylabel = sprintf('Averaged error (%d experiments)',ntimes);
E.plot = 'plot';

plote(E);