function [v]=solver(v0,v_1,f_xi,f_x_1)
v=v0-((f_xi*(v_1-v0))/(f_x_1-f_xi));  %secant formula
end