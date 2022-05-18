%calibrate and read outputs from mpu6050
clear all
%find instantaneous (uncalibrated) orientation
position = init_orientation;
%calibrate
adjust = calibration;

x_adjust = adjust(1,1);
y_adjust = adjust(1,2);
z_adjust = adjust(1,3);

%take new, calibrated readings
x = position(1,1) - x_adjust;
y = position(1,2) - y_adjust;
z = position(1,3) - z_adjust;
