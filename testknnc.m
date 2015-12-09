function [bestk,err] = testknnc(dataset,I,J)
disp('testing knnc');
maxk = 20;

bestk = -1;
err = inf;

for k=1:maxk
    fprintf('k = %d',k);
    
    e = testClassifier(dataset,I,J,knnc([],k));
    
    fprintf(', mean error = %f\n',e);
    
    if (err > e)
       bestk = k;
       err = e;
    end
end


end

