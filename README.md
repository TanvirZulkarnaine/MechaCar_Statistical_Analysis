# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
![Linear Regression](/Resources/LM.png)

We noted that vehicle_length and ground_clearance had the lowest p-values. Since p-value for Vehicle_length is 2.60e-12 and ground_clearance is 5.21e-08, we can conclude that these two variables had the highest impact to fuel efficiency (mpg). The slope of the linear model are not considered zero as there are p-values present for the available columns. Since, the r-squared of this linear model is 0.714, we can say that the linear model predicts the fuel efficiency (mpg) of MechaCar 71% of the time. 

## Summary Statistics on Suspension Coils
![Summary Tables](/Resources/total_summary.png)
![Summary Tables2](/Resources/lot_summary.png)

The total_summary table shows us the summary statistics of the PSI column of mechaCars. Since it is required that the variance of suspension coil must not exceed 100 PSI, we satisfy this condition as the variance found in summary statistics is 62.29 which is below the 100 PSI requirement.
Similarly, the lot_summary table shows us the summary statistics of total_summary table, however, this table is grouped by their lot #. Lot 1 and 2 has variance of 0.98 and 7.47 respectively, thus they are below the 100 variance PSI requirement. However, as we see from the data table, lot 3 has a variance of 170.28 PSI which is well above 100 PSI requirement, thus it does not meet the design specification. 

## T-Tests on Suspension Coils
![t_tests1](/Resources/t_test1.png)
> The p-val is 0.06 > 0.05. Thus, we fail to reject null hypothesis. True mean is equal 1500.

![t_tests2_1](/Resources/t_test2_1.png)
> p-value = 1 > 0.05. Thus, we fail to reject null hypothesis and true mean is equal 1500 for lot 1.

![t_tests2_1](/Resources/t_test2_1.png)
> p-val = 0.60 > 0.05. Thus, we fail to reject null hypothesis and true mean is equal to 1500 for lot 2.

![t_tests2_1](/Resources/t_test2_1.png)
> p-val = 0.041 < 0.05. Thus, we reject null hypothesis and true mean is different from 1500 for lot 3. 

## Study Design: MechaCar vs Competition
The first and most important factor that consumers consider is cost of the vehicle in my opinion because most likely, the consumer will have a certain budget for the car and they'll want to spend within the budget. Once they have found a car that cost within their budget, the consumer can do further research on other categories such as highway fuel efficiency, which city they live in, power, etc. 

I would run statistical tests on the cost as numerical data and city as categorical data. My null hypothesis would be that there is no different between cost for different cities. Alternate hypothesis would be that there is a difference in cost for different cities. 
I will calculate the average cost for all cities then create subset of tables holding each cities and their respective car costs. Then, I will run a multiple t.tests for all the cities to check whether their cost average is equivalent to the average cost for all cities with a 0.05 significance level. To run this statistical test, I'll need the original table holding all the cities and costs, and subset tables which hold cost for respective cities. That is how I will conclude my statistical test.
