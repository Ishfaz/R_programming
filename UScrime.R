# Load the necessary packages
library(dplyr)
library(ggplot2)

# Read the data
uscrime =read.table("E:/Data Sets/uscrime.txt", header=TRUE)
View(uscrime)

# Data cleaning
uscrime_data_cleaned <- uscrime %>%
  
  # Drop unnecessary columns
  select(-c(M, So, Ed)) %>%
  # Replace missing values with column means
  mutate_if(is.numeric, funs(ifelse(is.na(.), mean(., na.rm = TRUE), .)))

# Data exploration
# Distribution of the Crime variable
ggplot(uscrime, aes(x = Crime)) +geom_histogram(fill = "blue", bins = 30) +labs(title = "Distribution of the Crime variable",x = "Crime",y = "Frequency")

# Scatterplot of Crime and Police
ggplot(uscrime, aes(x = Crime, y = Prob, color = So)) +
  geom_point() +
  labs(title = "Scatterplot of Crime and Prob",
       x = "Crime",
       y = "Prob",
       color = "So")



# Bar chart of mean Income by Region
ggplot(uscrime, aes(x = So, y = Wealth)) +
  geom_col(fill = "blue") +
  labs(title = "Mean Income by Region",
       x = "So",
       y = "Wealth")
