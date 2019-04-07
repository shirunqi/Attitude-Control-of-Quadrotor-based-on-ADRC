clc
clear all
close all

%% 开始仿真
sim('Attitude_Control_ADRC');

%% 保存数据
save yaw; save pitch; save roll;
save u; save u_yaw; save u_pitch; save u_roll;
save t;
save v0_yaw; save v0_pitch; save v0_roll;

%% 画图
plot_figure;