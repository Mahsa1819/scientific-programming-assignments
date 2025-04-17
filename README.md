# Planar Mechanism Analysis and Simulation

This project presents a complete **kinematic and dynamic analysis** of a planar multi-link mechanism using MATLAB. It includes **animated motion simulation**, **position and velocity analysis**, and the calculation of **input torque** using **numerical methods**.

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
   - **Mechanism animation**:
     ```matlab
     mechanism_animation
     ```
   - **Dynamic force analysis**:
     ```matlab
     dynamic_analysis
     ```

> **Note**: You may need to adjust certain parameters (such as the crank speed or link lengths) directly in the scripts to match the specific case you are analyzing.

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

