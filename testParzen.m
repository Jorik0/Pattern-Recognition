function [besth,err] = testParzen(dataset,I,J)
disp('testing parzen');
epsilon = 0.01;

besth = 2;
err = inf;
dif = inf;
step = 1;
steps = 2;

while (dif > epsilon)
    olderr = err;
    
    for h = (besth-steps*step):step:(besth+steps*step)        
        fprintf('h = %d\n',h);
        e = testClassifier(dataset,I,J,parzenc([],h));
        
        if (err > e)
            err = e;
            besth = h;
        end
    end
    
    dif = olderr - err;
    step = step/2.0;
    steps = 2;
end

