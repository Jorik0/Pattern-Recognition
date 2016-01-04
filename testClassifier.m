function [err] = testClassifier(dataset,I,J,classifier,fs)
for i = 1:size(I,2)
    c = dataset(I(:,i),:) * fs{i} * classifier;
    e(i) = dataset(J(:,i),:) * fs{i} * c * testc;
end

err = mean(e);
end

