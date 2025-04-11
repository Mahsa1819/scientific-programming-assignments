
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
     kinematic_analysis
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

