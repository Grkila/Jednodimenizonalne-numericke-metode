function Zlatni_presek()

a=-10;
b=10;
tol=0.001;
x1=2;
x2=3;
%fibonacci(3)
golden_ratio=( 1 + sqrt(5) ) / 2;
iteration=0;
while abs(a-b)>tol
    iteration=iteration+1;
    x1=a+ (1/golden_ratio)^2 *abs(b-a);
    
    x2=a+b-x1;
    
    if f(x1)<f(x2)
        b=x2;
    end
    
    if f(x1)>f(x2)
        a=x1;
    end

end
disp(x1)
disp(iteration)
end


function res= f(x)
    res =1/3 * x.^2 -5*x+3;
end