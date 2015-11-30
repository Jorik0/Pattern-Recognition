function E = testClassifiers(dataset)

c  = cell(1,9);
c{1} = nmc;
c{2} = ldc;
c{3} = qdc;
c{4} = fisherc;
c{5} = loglc;
c{6} = knnc;
c{7} = parzenc;
c{8} = bpxnc;
c{9} = svc;

E = cleval(dataset,c,[100,2000,4000],5);

end

