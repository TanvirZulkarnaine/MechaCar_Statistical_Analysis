# Import Libraries:
library(tidyverse)
library(dplyr)
# Deliverable 1:
# import mecha car dataset
mechCar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
mechCar_table
# Generate multiple Linear Regression model
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechCar_table)
reg

# Generate r-squared and p-value
summary(reg)

# Just see r-squared value
summary(reg)$r.squared

# ==============================================================================
# Deliverable 2:
# import suspension coil dataset
susCoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Summarize dataset
total_summary <- susCoil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
total_summary 

# Summarize dataset using groupBy on manufacturing lot
lot_summary <- susCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary 

# ==============================================================================
# Deliverable 3:
# Question: In your MechaCarChallenge.RScript, write an RScript using the t.test() function 
# to determine if the PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch.
t.test(susCoil_table$PSI, mu=1500)
# The p-val is 0.06 > 0.05. Thus, we fail to reject null hypothesis. True mean is equal 1500.

# Question: Next, write three more RScripts in your MechaCarChallenge.RScript using the 
# t.test() function and its subset() argument to determine if the PSI for each 
# manufacturing lot is statistically different from the population mean of 1,500 
# pounds per square inch.

lot_1 <- subset(susCoil_table, Manufacturing_Lot == "Lot1")
t.test(lot_1$PSI, mu=1500)
# p-value = 1 > 0.05. Thus, we fail to reject null hypothesis and true mean is equal 1500 for lot 1.

lot_2 <- subset(susCoil_table, Manufacturing_Lot == "Lot2")
t.test(lot_2$PSI, mu=1500)
# p-val = 0.60 > 0.05. Thus, we fail to reject null hypothesis and true mean is equal to 1500 for lot 2.

lot_3 <- subset(susCoil_table, Manufacturing_Lot == "Lot3")
t.test(lot_3$PSI, mu=1500)
# p-val = 0.041 < 0.05. Thus, we reject null hypothesis and true mean is different from 1500 for lot 3. 
# ==============================================================================





