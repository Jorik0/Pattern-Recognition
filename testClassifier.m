function [err] = testClassifier(ds,I,J,classifier)
for i = 1:size(I,2)
    c = ds(I(:,i),:) * classifier;
    e(i) = ds(J(:,i),:) * c * testc;
end

err = mean(e);
end

