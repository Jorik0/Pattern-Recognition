function E = testParametric(im)
I = [];
J = [];
for z = 1:20
[~,~,i, j] = gendat(im,0.3);
I = [I i];
J = [J j];
end
E = testClassifier(im,I,J,nmc);