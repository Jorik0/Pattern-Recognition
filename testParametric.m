function [c,err,str] = testParametric(ds,I,J,fs)
disp('testing parametric');
text = {'nmc','ldc','qdc','fisherc','loglc'};
classifiers = {nmc,ldc,qdc,fisherc,loglc};

best = -1;
err = inf;

for i = 1:size(classifiers,2)
    fprintf('%s',text{i});
    
    e = testClassifier(ds,I,J,classifiers{i},fs);
    
    fprintf(', mean error = %f\n',e);
    
    if (err > e)
       err = e;
       best = i;
    end
end

c = classifiers{best};
str = text{best};
end

