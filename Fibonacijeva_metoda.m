function Fibonacijeva_metoda()

a=-10;
b=10;
steps=26;
x1=0;
x2=0;
%fibonacci(3)

for i = 1:steps-2
    Fnum=steps-i;
    x1=a+(fibonacci(Fnum-2)/fibonacci(Fnum))*abs(b-a);
    
    x2=a+b-x1;
    
    if f(x1)<f(x2)
        b=x2;
    end
    
    if f(x1)>f(x2)
        a=x1;
    end

end
disp(x1);
end


function res= f(x)
    res =1/3 * x.^2 -5*x+3;
end