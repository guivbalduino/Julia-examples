using Pkg
Pkg.add("Plots")  # Apenas na primeira vez
using Plots

# Data
x = 1:10
y = x .^ 2

# Create the plot
p = plot(x, y,
    label = "x squared",
    xlabel = "x",
    ylabel = "y",
    title = "Simple Plot",
    legend = :topright,
    dpi = 300
)

# Save as PNG
savefig(p, "plot_output.png")
println("Plot saved as 'plot_output.png'")
