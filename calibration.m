function adjust = calibration()
mbox = msgbox('Lay on a flat surface','Calibration');
uiwait(mbox); 
cal = init_orientation;
x_cal = cal(1,1);
clear cal

mbox = msgbox('Lay upright on right side','Calibration');
uiwait(mbox); 
cal = init_orientation;
y_cal = cal(1,2);
clear cal

mbox = msgbox('Place vertically','Calibration');
uiwait(mbox); 
cal = init_orientation;
z_cal = cal(1,3);
clear cal

mbox = msgbox('Calibration Completed!','Calibration');
uiwait(mbox); 

x_adjust = -x_cal;
y_adjust = -y_cal;
z_adjust = -z_cal;

adjust = [x_adjust,y_adjust,z_adjust];

