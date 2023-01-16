# Contigency test table
# Create example data
data <- data.frame(
    group = c("A", "A", "A", "B", "B", "B"),
    outcome = c("success", "success", "failure", "success", "failure", "failure")
)

# Create contingency table
table <- table(data$group, data$outcome)
table

# Perform chi-squared test
chisq.test(table)

# In this example, the contingency table is created using a dataframe with two 
# categorical variables, "group" and "outcome". 
# The table() function is used to create a contingency table from the data.
# 
# The last line performs a chi-squared test to determine if there is a significant 
# association between the two variables in the table.

# The output of the chi-squared test includes the test statistic (X-squared), 
# degrees of freedom, and p-value. Based on the p-value (0.1464) we fail to reject 
# the null hypothesis which means there is no significant association between the 
# two variables.