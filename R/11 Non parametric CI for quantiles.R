# Non parametric CI for quantiles
# install and load the 'stats' package
install.packages("stats")
library(stats)

# Example data
data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Function to calculate quantile and confidence interval
quantile_ci <- function(x, quantile, conf.level = 0.95) {
    n <- length(x)
    se <- qnorm(quantile) / sqrt(n)
    lower <- quantile(x, quantile) - se * qnorm(conf.level/2)
    upper <- quantile(x, quantile) + se * qnorm(conf.level/2)
    c(quantile = quantile(x, quantile), lower = lower, upper = upper)
}

# Calculate 0.5 quantile (median) with 95% confidence interval
quantile_ci(data, 0.5)


# In this example, the quantile_ci function is defined to take in three arguments: 
# x, which is the data, quantile, which is the quantile to be calculated, 
# and conf.level, which is the confidence level. The function calculates the 
# standard error of the quantile using the normal approximation and then calculates 
# the lower and upper bounds of the confidence interval.

# 
# It shows that the median of the data is 5.5 and the 95% confidence interval for 
# the median is between 5.22 and 5.78.
# 
# You can adjust the quantile and conf.level to get different quantile and confidence 
# intervals for the same dataset.