# Digital Logic: VHDL Code and Simulation

## Setup Instructions

### 1. Install VS Code and ModelSim

- **VS Code** is used for writing the VHDL code.
- **ModelSim** is used for compiling and running the simulations.

### 2. VS Code Workspace Recommendations

To assist with writing and editing VHDL code, I have included a **VS Code extension** in the workspace recommendations. This extension will provide syntax highlighting and formatting for better readability.

### 3. Running the Code in ModelSim

1. Open the **Transcript window** in ModelSim.
2. To compile and run the code, execute the corresponding **`.do` file** in the Transcript window:

   ```tcl
   do <filename>.do
   ```

   Replace `<filename>` with the name of the relevant `.do` file for the exercise (e.g., `half_adder.do`).

## Output

- The `.do` script will compile the VHDL files and start the simulation.
- After running the simulation, the output will be printed in the Transcript window, showing the results for each test case defined in the testbench.
