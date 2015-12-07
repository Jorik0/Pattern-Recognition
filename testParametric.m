function [c,err,str] = testParametric(dataset,I,J)
disp('testing parametric');
text = {'nmc','ldc','qdc','fisherc','loglc'};
classifiers = {nmc,ldc,qdc,fisherc,loglc};

best = -1;
err = inf;

for i = 1:size(classifiers,2)
    fprintf('k = %s\n',text{i});
    e = testClassifier(dataset,I,J,classifiers{i});
    
    if (err > e)
       err = e;
       best = i;
    end
end

c = classifiers{best};
str = text{best};
end

