using JuMP
using GLPK

# Define Model
model = Model(GLPK.Optimizer)

# All variables are integers
integer_solution = false

# Coefficients for objective function
c = [3; 2; 4]

# Coefficient for constraints
A = [1 1 2
     2 0 3
     2 1 3]

# Bounds for constraints
b = [4; 5; 7]

# Amount of variables
n = length(c)

# Variables
@variable(model, x[i = 1:n] >= 0, integer=integer_solution)
# Objective function
@objective(model, Max, c' * x)
# Constraints
@constraint(model, A * x .<= b)

# Solving/Optimizing
optimize!(model)
# Show model
print(model)

# Show Solutions
println("\nVariables")
for i in 1:n
    println("x",i," = ",value(x[i]))
end
println("\nObjective Function")
println("z = ",objective_value(model))
