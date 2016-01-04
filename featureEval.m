function featureEval(ds,modifier,classifiers,size)
ntimes = 4;
featsizes = [1,10,50,150,200,250,300,350,400];

error = 0;
aError = 0;
for i = 1:ntimes
    [train test] = gendat(ds,ones(1,10)*size);
    %w = featseli(train,crit); %Orders the features 
    %w = featseli(train,crit,0,ntimes); %Use cross-validation for classifiers as crit
    w = train*modifier;
    E = clevalf(train*w,classifiers,featsizes,ones(1,10)*size,1,test*w);
    
    error = error + E.error;
    aError = aError + aError;
    fprintf('Experiment %d/%d complete\n',i,ntimes);
end

E.error = error/ntimes;
E.aError = aError/ntimes;
E.ylabel = sprintf('Averaged error (%d experiments)',ntimes);
E.plot = 'plot';

plote(E);


