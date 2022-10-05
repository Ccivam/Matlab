t_r=[0:0.1:1];
A=zeros(11,3);
x0=0.3;x_1=0.34; %guess values

for i=1:11
while true
    f_xi=f(x0)-t_r(i);
    f_x_1=f(x_1)-t_r(i);
   x2=solver(x0,x_1,f_xi,f_x_1); 
    if abs((x2-x0)/x2)<0.001 %convergence criteria
        break
    end
   tem=x0; %variable exchange 
    x0=x2;
    x_1=tem;
end

A(i,1)=t_r(i); %array filling
A(i,2)=x2;
end

x=A(1:end,2);
y=A(1:end,1);

x_1=0.999;x0=1.001; %guess values for second root
for i=1:10
    
    
  while true
     f_xi=f(x0)-t_r(12-i);
    f_x_1=f(x_1)-t_r(12-i);
    x2=solver(x0,x_1,f_xi,f_x_1);
    if abs((x2-x0)/x2)<0.001  %convergence criteria
        break
    end
    tem=x0;  %variable exchange
    x0=x2;
    x_1=tem;
    end
    A(12-i,3)=x2;
end
A(11,3)=A(11,2);
A(1,3)=NaN;
A
z=A(1:end,3);
sort(z);

plot(x,y);
hold on
plot(z,y);

