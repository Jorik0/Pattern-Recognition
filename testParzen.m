function [besth,err] = testParzen(ds,I,J,epsilon)
disp('testing parzen');

if(~exist('epsilon', 'var'))
    epsilon = 0.01;
end

besth = 2;
err = inf;
dif = inf;
step = 1;
steps = 2;

while (dif > epsilon)
    olderr = err;
    
    for h = (besth-steps*step):step:(besth+steps*step)
        fprintf('h = %d',h);
        
        e = testClassifier(ds,I,J,parzenc([],h));
        
        fprintf(', mean error = %f\n',e);
        
        if (err > e)
            err = e;
            besth = h;
        end
    end
    
    dif = olderr - err;
    step = step/2.0;
    steps = 1;
end

