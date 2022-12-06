function ssa_example()
% Simulate a nine-state model of dynein stepping
import Gillespie.*

%% Reaction network:


%% Rate constants
p.zero = 1000;
p.one = 870;      
p.two = 1000;                     
p.three = 13.1;                        
p.four = 1000;
p.five = 870;
p.six = 1000;
p.seven = 13.1;
p.eight = 1000;
p.nine = 100;
p.ten = 100;
p.eleven = 100;
%% Initial state
tspan = [0, 100]; %seconds
x0    = [1, 0, 0 , 0, 0, 0, 0, 0, 0];     

%% Specify reaction network
pfun = @propensities_9state;
stoich_matrix = [  1 0 0 0 0 0 0 0 0;
                  -1 1 0 0 0 0 0 0 0;
                  0 -1 1 0 0 0 0 0 0;
                  0 0 -1 1 0 0 0 0 0;
                  0 0 0 -1 1 0 0 0 0;
                  0 0 0 0 -1 1 0 0 0;
                  0 0 0 0 0 -1 1 0 0;
                  0 0 0 0 0 0 -1 1 0;
                  0 0 0 0 0 0 0 -1 1;
                  1 0 0 0 0 0 0 0 -1;
                  0 0 -1 0 0 0 0 0 1;
                  0 0 0 -1 0 0 0 0 1];

%% Run simulation
%[t,x] = directMethod(stoich_matrix, pfun, tspan, x0, p);
[t,x] = firstReactionMethod(stoich_matrix, pfun, tspan, x0, p);

%% Plot time course
figure();
stairs(t,x); set(gca,'XLim',tspan);
xlabel('time (s)');
ylabel('molecules');
legend({'x1','x2','x3','x4','x5','x6','x7','x8','x9'});

end


function a = propensities_9state(x, p)
% Return reaction propensities given current state x
xone = x(1);
xtwo = x(2);
xthree = x(3);
xfour = x(4);
xfive = x(5);
xsix = x(6);
xseven = x(7);
xeight = x(8);
xnine = x(9);


a = [p.zero;
     p.one*xone;            
     p.two*xtwo;      
     p.three*xthree;       
     p.four*xfour;
     p.five*xfive;
     p.six*xsix;
     p.seven*xseven;
     p.eight*xeight;
     p.nine*xnine;
     p.ten*xthree;
     p.eleven*xfour];  
end
