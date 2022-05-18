%calibrate and read outputs from mpu6050
clear all
%find instantaneous (uncalibrated) orientation
position = init_orientation;
%calibrate
adjust = calibration;

x_adjust = adjust(1,1);
y_adjust = adjust(1,2);
z_adjust = adjust(1,3);
