function [err] = testClassifier(dataset,I,J,classifier)
for i = 1:size(I,2)
    c = dataset(I(:,i),:) * classifier;
    e(i) = dataset(J(:,i),:) * c * testc;
end

err = mean(e);
end
