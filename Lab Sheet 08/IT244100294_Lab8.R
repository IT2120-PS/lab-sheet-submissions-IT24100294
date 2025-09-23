# Set working directory
setwd("C:/Users/Virul Akbo/OneDrive - Sri Lanka Institute of Information Technology/Y2S1/PS/Labs/Lab 8")

# Read the TXT file (tab-delimited)
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

# Extract numeric column
weights <- data$Weight.kg.

# Step 1: Population mean & SD
true_mean <- mean(weights)
true_sd   <- sd(weights)

cat("Population Mean:", true_mean, "\n")
cat("Population SD:", true_sd, "\n")

# Step 2: Take 25 random samples of size 6
set.seed(321)
sample_means <- c()
sample_sds <- c()

for(i in 1:25){
  samp <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_sds[i]   <- sd(samp)
}

# Step 3: Mean & SD of 25 sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

cat("\nMean of 25 Sample Means:", mean_of_sample_means, "\n")
cat("SD of 25 Sample Means:", sd_of_sample_means, "\n")

# Step 4: Relationship
cat("\nRelationship:\n")
cat("- Mean of Sample Means ≈ True Mean\n")
cat("- SD of Sample Means < True SD (Central Limit Theorem)\n")
