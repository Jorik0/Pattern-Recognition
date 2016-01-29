function bound = findBound(im, adjacent, indices, dimension)
bound = inf;
counter = 0;

for i = 1:size(indices,2)
    if dimension == 1
        b = any(im(indices(i),:));
    else
        b = any(im(:,indices(i)));
    end
    if b
        counter = counter + 1;
        if counter == adjacent
            bound = indices(i - adjacent + 1);
            break;
        end
    else
        counter = 0;
    end
end

end

