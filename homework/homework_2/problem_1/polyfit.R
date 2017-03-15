library(tidyverse)
library(modelr)

# read data
data <- read_tsv('polyfit.tsv')

# shuffle the data and assign each row to one of 5 different folds
# make sure to use this seed
set.seed(4990)

# implement 5-fold cross-validation to compute the average train / test error (RMSE) for each polynomial degree

# make a plot showing the how the train and test error vary with the polynomial degree

# select the degree with the lowest average test error

# fit a final model for this degree on all of the data

# make a scatter plot of all of the data with the best-fit model overlayed as a line

# report the coefficients for the best-fit model
