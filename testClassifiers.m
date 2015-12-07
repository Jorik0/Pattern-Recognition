function c = testClassifiers(dataset,size)
clear I;
clear J;

for i=1:20
    [~,~,I(:,i),J(:,i)] = gendat(dataset,ones(1,10)*size);
end

[pc,err,txt] = testParametric(dataset,I,J);

fprintf('For size %d the best paramatrix classifier = %s, with mean error = %f \n',size,txt,err);

[k,err] = testknnc(dataset,I,J);

fprintf('For size %d the best k = %d, with mean error = %f \n',size,k,err);

c = knnc([],k);
end

