using Pkg
Pkg.add("Plots")
using Plots

# Generate random numbers
data = randn(1000)  # normal distribution

# Save histogram as PNG
histogram(data, bins=30, title="Normal Distribution", xlabel="Value", ylabel="Frequency")
savefig("histogram.png")
println("Histogram saved as 'histogram.png'")
