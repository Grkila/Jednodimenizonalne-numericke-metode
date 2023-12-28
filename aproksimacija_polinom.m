%{
function aproksimacija()
x_pre=inf;
x_nakon=50;
tol=0.0001;
X = -20:0.001:20;
plot(X,f(X)),hold on
iteration =0;
while abs(x_pre-x_nakon)>tol
    x_pre=x_nakon;
    x_nakon=x_pre-dF(x_pre)/ddF(x_pre);
 
   iteration=iteration+1;
end

scatter(x_nakon,f(x_nakon))
disp(iteration)
hold off
end
%}
function metoda_secice()
x_pre=inf;
x_pre_pre=25;
x_nakon=20;
tol=0.0001;
X = -20:0.001:20;
plot(X,f(X)),hold on
iteration =0;
while abs(x_pre-x_nakon)>tol
    x_pre_pre=x_pre;
    x_pre=x_nakon;
    x_nakon=x_pre-dF(x_pre)/((dF(x_pre)-dF(x_pre_pre))/(x_pre-x_pre_pre));
 
   iteration=iteration+1;
end
scatter(x_nakon,f(x_nakon))
disp(iteration)
disp(x_nakon)
hold off
end

function res = f(x)
    
    res = x.^2 + sin(2*x)-6;
end

function res= dF(x)

    res=2*x+2*cos(2*x);
end

function res = ddF(x)
    res=2-4*sin(2*x);
end