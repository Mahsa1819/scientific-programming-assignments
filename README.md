
# Planar Mechanism Analysis and Simulation

This project presents a complete **kinematic and dynamic analysis** of a planar multi-link mechanism using MATLAB. It includes animated motion simulation, position and velocity analysis, and the calculation of input torque using numerical methods.

---

## 📁 File Structure

| File Name              | Description |
|------------------------|-------------|
| `mechanism_diagram.jpg` | Diagram of the mechanism and link lengths |
| `kinematic_analysis.m`  | Computes angular positions, velocities, and accelerations of the links |
| `mechanism_animation.m` | Animates the mechanism and visualizes the motion |
| `dynamic_analysis.m`    | Solves dynamic equations and calculates required input torque |

---

## ⚙️ Requirements

- MATLAB R2016 or newer (recommended)
- Optimization Toolbox (`fsolve` function is used in dynamic analysis)

---

## 🚀 How to Run

1. Open MATLAB.
2. Navigate to the project folder.
3. Run the following scripts:
   - For **kinematic analysis and plots**:
     ```matlab
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
     ```
   - For **mechanism animation**:
     ```matlab
     mechanism_animation
     ```
   - For **dynamic force analysis**:
     ```matlab
     dynamic_analysis
     ```

---

## 📊 Output

- Plots of:
  - Angular velocities and accelerations of different links
  - Linear velocities and accelerations of points in the mechanism
  - Required input torque for motion
- Real-time animation of the mechanism's motion

---

## 📌 Notes

- The mechanism is driven by a crank rotating at constant angular velocity (ω₂ = 42 rad/s).
- Trigonometric constraints are handled carefully using MATLAB built-in functions.
- Force analysis is based on solving nonlinear systems using `fsolve`.

---

## 👩‍💻 Author

**Mahsa Vanda**  
B.Sc. in Mechanical Engineering  
Babol Noshirvani University of Technology

---

