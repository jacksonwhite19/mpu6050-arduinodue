%function to get calibrated instantaneous position
function orient = real_position(x_adjust,y_adjust,z_adjust)
a = arduino();
imu = mpu6050(a);
    accel = zeros(10,3);
    for x = 1:1:10
        accel(x,:)=readAcceleration(imu);
    end
        pos_x = mean(accel(:,1));
        pos_y = mean(accel(:,2));
        pos_z = mean(accel(:,3));

        x = pos_x - x_adjust;
        y = pos_y - y_adjust;
        z = pos_z - z_adjust;

        orient = [x,y,z];
clear a
clear imu
clear accel
