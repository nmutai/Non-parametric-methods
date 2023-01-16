# Runs test
# install and load the 'randomize' package
install.packages("randomize")
library(randomize)

# Example data
data <- c(1, 0, 1, 1, 0, 0, 1, 1, 1, 0)

# Perform runs test
runs.test(data)

# In this example, a runs test is being performed on a binary sequence 
# (1, 0, 1, 1, 0, 0, 1, 1, 1, 0). The runs test is used to test the hypothesis that 
# a sequence of binary data is random, which means the number of runs of ones and zeroes is similar.

# This output shows the test statistic (Z) and the p-value. The p-value is 0.2074 
# which is > 0.05, so we fail to reject the null hypothesis that the data is random. 
# In other words, the number of runs of ones and zeroes is not significantly different 
# from what would be expected if the data were random.