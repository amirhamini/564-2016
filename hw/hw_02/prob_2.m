clear all; close all; clc

t = 0:.01:10;

y0(1,:) = [1; -1; 1];
y0(2,:) = [1; 2; 4];
y0(3,:) = [2; 1; 5];

A = [0 1 0; 
     0 0 1;
     4 4 -1];
clrs = ['r', 'b', 'k']; 
for i=1:3
[t,y] = ode45(@(t,y) A*y, t, y0(i,:));
subplot(3,1,i)
plot(t,y(:,1),clrs(i))
xlabel('Time [s]')
hold on
end
