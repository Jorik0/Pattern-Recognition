function fisherEval(ds,classifiers,tSize)
ntimes = 4;

error = zeros(size(classifiers,2), 9);
aError = zeros(size(classifiers,2), 9);

for i = 1:ntimes
    [train, test] = gendat(ds,ones(1,10)*tSize);
    
    for j = 1:9
        w = fisherm(train,j);
        
        c = train*w*classifiers;
        
        for k = 1:size(classifiers,2)
            e = test*w*c{k}*testc;
            ae = train*w*c{k}*testc;
            error(k,j) = error(k,j) + e;
            aError(k,j) = aError(k,j) + ae;
        end        
    end
    
    fprintf('Experiment %d/%d complete\n',i,ntimes);
end

E = struct();

E.error = error/ntimes;
E.apperror = aError/ntimes;
E.xvalues = 1:9;
E.n = ntimes;
E.title = sprintf('Feature curve for %s', getname(ds));
E.xlabel = 'Feature size';
E.ylabel = sprintf('Averaged error (%d experiments)',ntimes);
E.plot = 'plot';

for k = 1:size(classifiers,2)
   names{k} = getname(classifiers{k}); 
end
E.names = char(names);

plote(E);
end

