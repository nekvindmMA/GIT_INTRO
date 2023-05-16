# Generate a random sample of numbers
set.seed(42)  # Set seed for reproducibility
sample_size <- 100
sample <- rnorm(sample_size)

# Calculate the mean of the sample
mean_value <- mean(sample)

# Plot a histogram of the sample
hist(sample, main = "Random Sample", xlab = "Values", col = "lightblue")
abline(v = mean_value, col = "red", lwd = 2)
legend("topright", legend = c("Mean"), col = "red", lwd = 2)

# Print the mean value
cat("Mean:", mean_value, "\n")