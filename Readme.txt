#Project: Hexahedron Finite Element Analysis (FEA) Solver

##Description
This MATLAB script conducts Finite Element Analysis (FEA) on a hexahedron mesh of a 3D structure under static loading and boundary conditions. It computes nodal displacements, targeting a total displacement equal to 4% of the structure's height. The code is tailored for simple, regular geometries made of isotropic materials.

##How to Use
- Launch MATLAB.
- Load the script in the MATLAB editor.
- Adjust the input parameters to match your specific analysis needs.
- Execute the script to perform the simulation.

##Input Parameters 
Modulus of Elasticity (E0) - in Pascals (Pa)
Poisson's Ratio (v)
Maximum Allowable Stress (SigmaMax) - in Pascals (Pa).
Concrete Density (p)- in kilograms per cubic meter (kg/m³).
Node Coordinates (XYZCoord): The 3D Cartesian coordinates for each node in the hexahedron elements
Element Connectivity (ELEMCon):  A matrix describing how nodes are connected to form each hexahedron element
Support Conditions (support): Identifies which degrees of freedom are constrained at each node
Applied Loads (static load): Describes external forces applied at specific nodes.

##Process
Step 1: Input material properties such as modulus of elasticity (E0), Poisson’s ratio (v), and maximum allowable stress (SigmaMax). Define force boundary conditions.
Step 2: Construct the stiffness matrix and force vector for each element using isoparametric formulation, incorporating both material and geometric characteristics.
Step 3: Solve the global equilibrium equations to compute nodal displacements.
Step 4: Compute the strain for each element, then apply the HD material model to determine updated stress and direction-specific modulus (E) since strain varies in each direction.
Step 5: Update the material stiffness matrix (D matrix) using the newly calculated modulus values.
Step 6: Repeat the displacement solution process (Step 3 onward) using the updated D matrix until the analysis is complete.
Step 7: After the loop ends, inspect the variables uDel_inc and uLoad_inc in the workspace to identify the step where the target displacement is reached. Then retrieve and visualize the corresponding stress and displacement results for that step.

##Output
The script generates the following results:
	-Displacement values at each node.
	-Stress and strain values for each element.
	-Visual representation of the hexahedron column structure in both undeformed and deformed states.

