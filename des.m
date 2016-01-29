function [e] = des(im);

[train,test] = gendat(im,ones(1,10)*10);
type = {'p','h','e','r','s','d','m','c','o','n','g'};
for i = 1:size(type,2)
    for j = 1:5
      w = proxm(train,type{i},j);
      e(i,j) = test*w*testc;
    end  
end


% b = gendat(im,ones(1,10)*200);
% type = {'p','h','e','r','s','d','m','c','o','n','g'};
% for i = 1:size(type,2)
%     for j = 1:5
%       w = proxm(b,type{i},j);
%       e(i,j) = im*w*testc;
%     end  
% end

