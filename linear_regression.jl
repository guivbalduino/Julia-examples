using Pkg
Pkg.add("DataFrames")
Pkg.add("GLM")
Pkg.add("CSV")

using DataFrames, GLM, CSV

# Create dataset
df = DataFrame(x = 1:10, y = [2.3, 3.1, 4.5, 6.0, 7.4, 7.9, 9.2, 10.5, 11.1, 12.7])

# Fit linear model
model = lm(@formula(y ~ x), df)

# Save coefficients
open("model_coefficients.txt", "w") do io
    println(io, "Model Coefficients:")
    for (name, value) in zip(coefnames(model), coef(model))
        println(io, "$name = $value")
    end
end

# Save model summary
open("model_summary.txt", "w") do io
    show(io, MIME"text/plain"(), coeftable(model))
end

# Generate predictions and save
df_predictions = DataFrame(x = df.x, actual_y = df.y, predicted_y = predict(model))
CSV.write("predictions.csv", df_predictions)

println("Files saved: model_coefficients.txt, model_summary.txt, predictions.csv")
