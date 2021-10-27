This is a simple program in Julia that solves a linear optimization problem.

The exact problem here is

<img src="Images/optProblem.png" alt="drawing" width="300"/>

and more generally

<img src="Images/generalMax.png" alt="drawing" width="300"/>

I have modelled this with GLPK in Julia and it uses a (MI)LP solver to find the optimal solution.
For different values you need to change the vectors $$c$$, $$b$$ and the matrix $$A$$. Additionally you can set $$integer\_solution$$ to $$true$$ and then your variables will have integer solutions.

What else can I say... Idk
