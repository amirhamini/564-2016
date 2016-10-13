clear all; close all; clc;

t = 0:.0001:15;

y0 = [1 0 1 0];

A = [0 1 0 0; 
     -2 0 1 0;
     0 0 0 1;
     1 0 -1 0];
clrs = ['r', 'b', 'k']; 
ylabels = ['x1', 'x2'];
j = 1;
for i=1:2:3
[t,y] = ode45(@(t,y) A*y, t, y0);
subplot(2,1,j)
plot(t,y(:,i),clrs(i))
xlabel('Time [s]')
ylabel(ylabels(j))
hold on
j = j + 1;
end
