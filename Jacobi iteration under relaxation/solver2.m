function [xnew]=solver2(a,b,n)
x=zeros(n,1);
xnew=zeros(n,1);

tol=0.1;
opeadd=0;            
opemult=0;
maxiter=100;

for iter=1:maxiter
    convergence=true;
    for i=1:n %loop of equations
        sum=0;
        for j=1:n %loop of summation
            if j~=i
                sum=sum+a(i,j)*x(j);
                opeadd=opeadd+1;
                opemult=opemult+1;
            end
        end
        xnew(i)=(-1/a(i,i))*(sum-b(i));
        opeadd=opeadd+1;
        opemult=opemult+2;
        xnew(i)=(1-0.61)*x(i)+0.61*xnew(i);
        opeadd=opeadd+2;
        opemult=opemult+2;
                if abs((xnew(i)-x(i))/xnew(i))>tol
            convergence=false;
        end
    end
  if convergence
      break
  end
  

    x=xnew;
    
end
xnew=[xnew;opeadd;opemult];
end