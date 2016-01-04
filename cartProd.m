function [p] = cartProd(A,B)

sets = {A,B};
[x, y] = ndgrid(sets{:});
p = [x(:) y(:)];

end

