# Non parametric goodness-of-fit test
# example data
x <- rnorm(1000, mean = 50, sd = 10)

# test against normal distribution
ks.test(x, "pnorm", mean = 50, sd = 10)

# In this example, a non-parametric Kolmogorov-Smirnov test is being used to test 
# the goodness-of-fit of the data in the variable "x" against a normal distribution 
# with a mean of 50 and a standard deviation of 10. The "pnorm" argument specifies 
# that the theoretical distribution being tested against is normal.

# The output shows the test statistic (D), which measures the maximum difference 
# between the empirical cumulative distribution function of the sample and the 
# cumulative distribution function of the hypothesized distribution and the p-value.
# 
# Here, the p-value is greater than the significance level of 0.05, so we fail to 
# reject the null hypothesis that the sample data is from a normal distribution with 
# mean 50 and standard deviation 10.
# 
# It is worth noting that, depending on the sample size, the Kolmogorov-Smirnov 
# test can be sensitive to small differences between the sample and hypothesized 
# distribution. In these cases, other goodness-of-fit test such as Anderson-Darling 
# test or Cramer-von Mises test may be more appropriate.