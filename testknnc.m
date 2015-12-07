function [bestk,err] = testknnc(dataset,I,J)
maxk = 20;

bestk = -1;
err = inf;

for k=1:maxk
    e = testClassifier(dataset,I,J,knnc([],k));
    if (err > e)
       bestk = k;
       err = e;
    end
end


end

