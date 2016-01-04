function [bestk,err] = testknnc(ds,I,J,fs)
disp('testing knnc');
maxk = 20;

bestk = -1;
err = inf;

for k=1:maxk
    fprintf('k = %d',k);
    
    e = testClassifier(ds,I,J,knnc([],k),fs);
    
    fprintf(', mean error = %f\n',e);
    
    if (err > e)
       bestk = k;
       err = e;
    end
end


end

