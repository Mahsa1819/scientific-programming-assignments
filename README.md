# Planar Mechanism Analysis and Simulation

This is a project related to the **Dynamics of Machines** course, where students are given a diagram image and are required to analyze the diagram in MATLAB. This project presents a complete **kinematic and dynamic analysis** of a planar multi-link mechanism using MATLAB. It includes **animated motion simulation**, **position and velocity analysis**, and the calculation of **input torque** using **numerical methods**.


## 📁 File Structure

| **File Name**           | **Description**                                                       |
|-------------------------|-----------------------------------------------------------------------|
| `mechanism_diagram.jpg`  | Diagram of the mechanism and link lengths                             |
| `kinematic_analysis.m`   | Computes angular positions, velocities, and accelerations of the links |
| `mechanism_animation.m`  | Animates the mechanism and visualizes the motion                      |
| `dynamic_analysis.m`     | Solves dynamic equations and calculates required input torque        |

---

## ⚙️ Requirements

- **MATLAB R2016 or newer** (Recommended for compatibility with scripts)
- **Optimization Toolbox** (The `fsolve` function is used in dynamic analysis)

---

## 🚀 How to Run

1. Open MATLAB.
2. Navigate to the project folder using the `cd` command or through the file browser.
3. Run the following scripts:
   - **Kinematic analysis and plots**:
     ```matlab
     kinematic_analysis
     ```
     [Click here to view the code](https://github.com/Mahsa1819/scientific-programming-assignments/blob/main/kinematic_analysis)

   - **Mechanism animation**:
     ```matlab
     mechanism_animation
     clear all
clc
l1 = 3; l2 = 2; l3 = 10; l31 = 4; l5 = 8; omega2 = 42;
teta2 = -2*pi/3:-pi/18:-4*pi;
for i = 1 : length(teta2)
    teta3(i) = asin(-l2*sin(teta2(i))/l3);
    teta31(i) = teta3(i)+33*pi/180;
    l4(i) = l2*cos(teta2(i))+l3*cos(teta3(i));
    teta5(i) = acos((l1-l2*cos(teta2(i))-l31*cos(teta31(i)))/l5);
    l6(i) = l2*sin(teta2(i))+l31*sin(teta31(i))+l5*sin(teta5(i));
    f = @(x)[x(1)-x(3)
        x(2)-x(4)
        x(4)*l2*cos(teta2(i))+x(3)*l3*sin(teta2(i))+x(5)
        x(3)-x(7)
        x(4)+x(6)-x(8)
        -x(8)*l31*cos(teta31(i))+x(7)*l31*sin(teta31(i))+x(6)*l3*cos(teta3(i))
        x(7)-x(9)
        x(8)-20
        x(9)*l5*sin(teta5(i))-20*l5*cos(teta5(i))];
    x0 = [0 0 0 0 0 0 0 0 0];
    x = fsolve(f,x0);
    T2(i) = x(5);
end
plot(teta2,T2);xlabel('teta2');ylabel('T2');
     ```
     [Click here to view the code](https://github.com/Mahsa1819/scientific-programming-assignments/blob/main/mechanism_animation)

   - **Dynamic force analysis**:
     ```matlab
     dynamic_analysis
     ```
     [Click here to view the code](https://github.com/Mahsa1819/scientific-programming-assignments/blob/main/dynamic_analysis)


---

## 📊 Output

- **Plots** of:
  - Angular velocities and accelerations of different links
  - Linear velocities and accelerations of points in the mechanism
  - Required input torque for motion
- **Real-time animation** of the mechanism's motion using MATLAB’s built-in plotting functions.

---

## 📌 Notes

- The mechanism is driven by a crank rotating at a **constant angular velocity (ω₂ = 42 rad/s)**.
- Trigonometric constraints are handled with MATLAB's built-in functions to ensure accurate results.
- **Force analysis** uses **nonlinear systems** solved by the `fsolve` function in MATLAB.
- If you're experiencing errors with `fsolve`, make sure that the system is properly initialized with reasonable starting values.

---

## 👩‍💻 Author

**Mahsa Vanda**  
B.Sc. in Mechanical Engineering  
Babol Noshirvani University of Technology

---

## 🖥️ Code Repositories

Here are the links to the code files for each part of the project. You can view or copy the code by clicking the links below:

- [Kinematic Analysis Code](https://github.com/Mahsa1819/scientific-programming-assignments/blob/main/kinematic_analysis)
- [Mechanism Animation Code](https://github.com/Mahsa1819/scientific-programming-assignments/blob/main/mechanism_animation)
- [Dynamic Analysis Code](https://github.com/Mahsa1819/scientific-programming-assignments/blob/main/dynamic_analysis)
