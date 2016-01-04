function [err] = testClassifier(ds,I,J,classifier,fs)
for i = 1:size(I,2)
    c = ds(I(:,i),:) * fs{i} * classifier;
    e(i) = ds(J(:,i),:) * fs{i} * c * testc;
end

err = mean(e);
end

