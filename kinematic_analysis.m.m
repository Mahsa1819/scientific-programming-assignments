clear all
clc
l1 = 3; l2 = 2; l3 = 10; l31 = 4; l5 = 8; omega2 = 42;
teta2 = -2*pi/3:-pi/18:-4*pi;
for i = 1 : length(teta2)
    teta3(i) = asin(-l2*sin(teta2(i))/l3);
    l4(i) = l2*cos(teta2(i))+l3*cos(teta3(i));
    omega3(i) = -l2*omega2*cos(teta2(i))/(l3*cos(teta3(i)));
    v4(i) = -l2*omega2*sin(teta2(i))-l3*omega3(i)*sin(teta3(i));
    alpha3(i) = (l2*omega2^2*sin(teta2(i))+l3*omega3(i)^2*sin(teta3(i)))/(l3*cos(teta3(i)));
    a4(i) = -l2*omega2^2*cos(teta2(i))-l3*omega3(i)^2*cos(teta3(i))-l3*alpha3(i)*sin(teta3(i));
    teta31(i) = teta3(i)+33*pi/180;
    teta5(i) = acos((l1-l2*cos(teta2(i))-l31*cos(teta31(i)))/l5);
    l6(i) = l2*sin(teta2(i))+l31*sin(teta31(i))+l5*sin(teta5(i));
    omega5(i) = (-l2*omega2*sin(teta2(i))-l31*omega3(i)*sin(teta31(i)))/(l5*sin(teta5(i)));
    v6(i) = l2*omega2*cos(teta2(i))+l31*omega3(i)*cos(teta31(i))+l5*omega5(i)*cos(teta5(i));
    alpha5(i) = (-l2*omega2^2*cos(teta2(i))-l31*omega3(i)^2*cos(teta31(i))-l31*alpha3(i)*sin(teta31(i))-l5*omega5(i)^2*cos(teta5(i)))/(l5*sin(teta5(i)));
    a6(i) = -l2*omega2^2*sin(teta2(i))-l31*omega3(i)^2*sin(teta31(i))+l31*alpha3(i)*cos(teta31(i))-l5*omega5(i)^2*sin(teta5(i))+l5*alpha5(i)*cos(teta5(i));
end
figure(1)
subplot(2,2,1);plot(teta2,alpha3);xlabel('teta2');ylabel('alpha3');
subplot(2,2,2);plot(teta2,a4);xlabel('teta2');ylabel('a4');
subplot(2,2,3);plot(teta2,alpha5);xlabel('teta2');ylabel('alpha5');
subplot(2,2,4);plot(teta2,a6);xlabel('teta2');ylabel('a6');