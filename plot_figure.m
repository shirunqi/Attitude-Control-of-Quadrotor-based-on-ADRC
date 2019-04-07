clc
clear all
close all

%% 弧度转化成角度
RTD = 180 / pi;
%% 载入数据
load yaw pitch roll;
load u u_yaw u_pitch u_roll;
load t;
load v0_yaw v0_pitch v0_roll;

%% 画图
figure('name','偏航角随时间变化曲线')
plot(t,v0_yaw * RTD,'b:',t,yaw,'r-','LineWidth',2);
xlabel('时间(s)');
ylabel('偏航角(°)');
legend('期望值','实际值');
grid on;
title('偏航角随时间变化曲线');

figure('name','俯仰角随时间变化曲线')
plot(t,v0_pitch * RTD,'b:',t,pitch,'r-','LineWidth',2);
xlabel('时间(s)');
ylabel('俯仰角(°)');
legend('期望值','实际值');
grid on;
title('俯仰角随时间变化曲线');

figure('name','滚转角随时间变化曲线')
plot(t,v0_roll * RTD,'b:',t,roll,'r-','LineWidth',2);
xlabel('时间(s)');
ylabel('滚转角(°)');
legend('期望值','实际值');
grid on;
title('滚转角随时间变化曲线');

figure('name','控制量随时间变化曲线')
plot(t,u(:,1),'b:',t,u(:,2),'r-',t,u(:,3),'g-.',t,u(:,4),'m--','LineWidth',2);
xlabel('时间(s)');
ylabel('控制量(V)');
legend('v_f','v_b','v_r','v_l');
grid on;
title('控制量随时间变化曲线');