t0=0;//начальный момент времени
x0=21;//количество людей, которых знает о товаре
N=2200;//максимально количество людей, которых знает  о товаре
t=0:0.0001:0.5;

function g=k(t);
    g=0.51;
endfunction
 
function v=p(t);
    v=0.31;
endfunction

function xd=f(t,x);
    xd=(k(t)*sin(t)+p(t)*t*x)*(N-x);
endfunction
x=ode(x0,t0,t,f);

plot(t,x);





/*
n=size(x,"c");
for i=1:n
  dx(i)=(k(t)+p(t)*x(i))*(N-x(i));  
end
*/
/*
plot2d(t,x,style=color('red'));
plot2d(t,dx,style=color('blue'));
*/
