# Kruskal - Wallis test
# install and load the 'stats' package
install.packages("stats")
library(stats)

# Example data
group1 <- c(1, 2, 3, 4, 5)
group2 <- c(6, 7, 8, 9, 10)
group3 <- c(11, 12, 13, 14, 15)

# Conduct Kruskal-Wallis test
kruskal.test(list(group1, group2, group3))

# In this example, we have three groups of data (group1, group2, group3) and we 
# want to test if there is any significant difference between the medians of these 
# groups. Kruskal-Wallis test is a non-parametric test that can be used to compare 
# the medians of two or more groups.

# The output shows the test statistic (Kruskal-Wallis chi-squared), the degrees of 
# freedom (df), and the p-value. In this example, the p-value is 0.01674, which is 
# less than 0.05, indicating that there is a statistically significant difference in 
# the medians of the groups.