function fs = selectFeatures(ds,crit)
w = featseli(ds,crit);

best = -inf;
besti = 0;
for i = 1:size(ds,2)
    J = feateval(ds*w(:,1:i),crit);
    
    if (J > best)
        best = J;
        besti = i;
    end
end

fs = w(:,1:besti);
fprintf('Best number of features = %d \n',besti);
end

