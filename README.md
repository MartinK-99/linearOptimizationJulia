This is a simple program in Julia that solves a linear optimization problem.

The problem is

$$\begin{alignat}{3}
\max_x &\quad&z = 3x_1 + 2x_2 + 4x_3
\\s.t. &\quad&x_1+x_2+2x_3 \leq 4,\\
&\quad&2x_1 +3x_3 \leq 5,\\
&\quad&2x_1+x_2+3x_3 \leq7,\\
&\quad&x_1,x_2,x_3 \geq 0
\end{alignat}$$

or more generally

$$\max{c^\top x \;|\; Ax \leq b, \; x \geq 0}.$$

I have modeled this with GLPK in Julia and it uses a (MI)LP solver to find the optimal solution.
For different values you need to change the vectors $$c$$, $$b$$ and the matrix $$A$$. Additionally you can set $$integer\_solution$$ to $$true$$ and then your variables will be integers.

What else can I say... Idk