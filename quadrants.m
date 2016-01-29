function q = quadrants(im)
adjacent = 3;

lower = findBound(im, adjacent, 1:(size(im,1)-adjacent), 1);
upper = findBound(im, adjacent, fliplr(1:(size(im,1)-adjacent)), 1);
left = findBound(im, adjacent, 1:(size(im,2)-adjacent), 2);
right = findBound(im, adjacent, fliplr(1:(size(im,2)-adjacent)), 2);

if any([lower upper left right] == inf)
    q = [0.25 0.25 0.25 0.25];
else
   q = zeros(1,4);
   
   total = sum(sum(im));
   
   middley = floor(lower + (upper-lower)/2);
   middlex = floor(left + (right-left)/2);
   
   q(1) = sum(sum(im(1:middley,1:middlex)));
   q(2) = sum(sum(im(1:middley,(middlex+1):end)));
   q(3) = sum(sum(im((middley+1):end,1:middlex)));
   q(4) = sum(sum(im((middley+1):end,(middlex+1):end)));
   
   q = q/total;
end

