function Direktno_pretrazivanje ()
       
    a=-10;
    b=15;
    X=a:0.001:b;
    tol=0.001;
    plot(X,f(X)),hold on
    
    x3=a;
    x4=b;
    iteration=0
    while abs(x3-x4)>tol
        x3=a+rand(1)*(abs(b-a))/2;
        x4=(a+b)/2 +rand(1)*(abs(b-a))/2;
        if f(x3)<f(x4)
 
          b=x4;
        end
        
        if f(x3)>f(x4)
            a=x3;
        end
        iteration=iteration+1;
    end
    scatter(x3,f(x3))
    scatter(x4,f(x4)),hold off
    disp(x3)
    disp(x4)
    disp(iteration)
end

function res= f(x)
    res =1/3 * x.^2 -5*x+3;
end