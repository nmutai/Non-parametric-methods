# Sign-test for mean and median with an example
# Example data
sample <- c(1, 2, 3, 4, 5, 6, 7, 8)
sample <- rnorm(100)

# Sign test for mean
mean_test <- function(x) {
    sample_mean <- mean(x)
    sample_mean_diff <- x - sample_mean
    sample_mean_diff_sign <- sign(sample_mean_diff)
    sample_mean_diff_sign_count <- table(sample_mean_diff_sign)
    p_value <- binom.test(sample_mean_diff_sign_count["1"], length(x), 0.5)$p.value
    return(p_value)
}
mean_test_result <- mean_test(sample)
mean_test_result

# Sign test for median
median_test <- function(x) {
    sample_median <- median(x)
    sample_median_diff <- x - sample_median
    sample_median_diff_sign <- sign(sample_median_diff)
    sample_median_diff_sign_count <- table(sample_median_diff_sign)
    p_value <- binom.test(sample_median_diff_sign_count["1"], length(x), 0.5)$p.value
    return(p_value)
}
median_test_result <- median_test(sample)
median_test_result



# This code defines two functions mean_test() and median_test() that conduct a 
# sign test for the mean and median of a sample, respectively. 
# The functions take a sample as input and return the p-value of the test.
# 
# The example data is a sample of 8 values. The mean_test() function calculates 
# the mean of the sample, then it calculates the difference of each element of the 
# sample with the mean and takes the sign of the difference. 
# The resulting signs are then counted, and a binomial test is used to calculate 
# the p-value of the test.
# 
# Similarly, the median_test() function calculates the median of the sample, 
# then it calculates the difference of each element of the sample with the median 
# and takes the sign of the difference. 
# The resulting signs are then counted, and a binomial test is used to calculate 
# the p-value of the test.
# 
# So the output of mean_test_result and median_test_result will be p-value of the Sign-test.
# 
# Please note that the Sign test is a non-parametric test, that makes no assumptions 
# about the distribution of data. It is particularly useful when the sample size is 
# small and the data is not normally distributed. However, it is not very powerful, 
# especially when the sample size is large.
# 


