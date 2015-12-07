function [c err] = testClassifiers(dataset,size)
clear I;
clear J;

for i=1:20
    [~,~,I(:,i),J(:,i)] = gendat(dataset,ones(1,10)*size);
end
besterr = inf;

[pc,err,txt] = testParametric(dataset,I,J);
fprintf('For size %d the best paramatric classifier = %s, with mean error = %f \n',size,txt,err);
besterr = err;
c = pc;

[bestk,err] = testknnc(dataset,I,J);
fprintf('For size %d the best k = %d, with mean error = %f \n',size,bestk,err);
if (besterr > err)
   besterr = err;
   c = knnc([],bestk);
end

[besth,err] = testParzen(dataset,I,J);
fprintf('For size %d the best h = %d, with mean error = %f \n',size,besth,err);
if (besterr > err)
   besterr = err;
   c = parzenc([],besth);
end

err = testClassifier(dataset,I,J,neurc);
fprintf('For size %d the mean error of the neural network classifier = %f\n',size,err);
if (besterr > err)
    besterr = err;
    c = neurc;
end

err = besterr;
end

