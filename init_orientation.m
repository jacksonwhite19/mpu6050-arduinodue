%function to get instantaneous position data
function output = init_orientation()
a = arduino();
imu = mpu6050(a);
    accel = zeros(10,3);
    for x = 1:1:10
        accel(x,:)=readAcceleration(imu);
    end
        pos_x = mean(accel(:,1));
        pos_y = mean(accel(:,2));
        pos_z = mean(accel(:,3));

        output = [pos_x,pos_y,pos_z];
clear a
clear imu
clear accel
