function fs = selectFeatures(dataset,crit)
w = featseli(dataset,crit);

best = -inf;
besti = 0;
for i = 1:size(dataset,2)
    J = feateval(dataset*w(:,1:i),crit);
    
    if (J > best)
        best = J;
        besti = i;
    end
end

fs = w(:,1:besti);
fprintf('Best number of features = %d \n',besti);
end

