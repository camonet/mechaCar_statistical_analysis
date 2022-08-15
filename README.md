# mechaCar_statistical_analysis
## Linear Regression to Predict MPG 
<img width="465" alt="Screen Shot 2022-08-15 at 2 53 39 AM" src="https://user-images.githubusercontent.com/99444856/184597312-2a34f8c8-631d-4bac-b41b-e141e93859be.png">
- Given significance values of 5.77e-08 and 2.60e-12 respectively, ground clearance and miles per gallon provide a non-random amount of variance. 
- The slope of the linear model could be considered to be zero because of the extremely small slope values of each of the variables. 
- An r-squared value of 0.7119 and a p-value of 6.712e-11 (an exorbitantly small number) suggests that this model can confidently predict the mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
### Total summary dataframe
<img width="337" alt="Screen Shot 2022-08-15 at 3 02 53 AM" src="https://user-images.githubusercontent.com/99444856/184598713-214ce41e-a0e9-4310-8b84-293a6066cd83.png">

### Lot summary dataframe
<img width="466" alt="Screen Shot 2022-08-15 at 3 03 22 AM" src="https://user-images.githubusercontent.com/99444856/184598780-05fa9b4f-6eb5-4076-acb9-b5277222ecbd.png">

The summary statistic from the manufacturing lots in total and individually suggests that the design specification is being met, given that the largest variance was ~ 4 psi from 1500 (1496.14psi)

## T-Tests on Suspension Coils
### Comparing sample versus population means 
<img width="430" alt="Screen Shot 2022-08-15 at 3 08 53 AM" src="https://user-images.githubusercontent.com/99444856/184599504-6d03153b-9097-4fa4-99d3-4dd047b274ac.png">
- A p-value of 0.06 means that we fail to reject the null-hypothesis; variances in means are accounted for by random chance

### Comparing the mean psi of Lot 1 against the population psi
<img width="430" alt="Screen Shot 2022-08-15 at 3 09 33 AM" src="https://user-images.githubusercontent.com/99444856/184599592-2366f917-19c5-44b6-b773-10124b7141b6.png">
- A p-value of 1 means that we fail to reject the null-hypothesis; variances in the mean in Lot 1 is accounted for by random chance

### Comparing the mean psi of Lot 2 against the population psi
<img width="430" alt="Screen Shot 2022-08-15 at 3 09 56 AM" src="https://user-images.githubusercontent.com/99444856/184599649-7a03cc46-a144-4ba7-8c7d-1fd1ba24276d.png">
-A p-value of 0.6 means that we fail to reject the null-hypothesis; variances in the mean of Lot 2 are accounted for by random chance

### Comparing the mean psi of Lot 3 against the population psi
<img width="430" alt="Screen Shot 2022-08-15 at 3 10 15 AM" src="https://user-images.githubusercontent.com/99444856/184599687-aff1fba6-b8ee-4a38-934e-0f80f878b0d9.png">
- A p-value of 0.04 means that we reject the null-hypothesis; the true mean of the psi in Lot 3 is not equal to 1500 psi

## Study Design: MechaCar vs Competition
A valuable way to quantify Mechacar's performance against competitiors would be to compare mileage per gallon. Gas prices saw huge inflation in 2022, reaching prices close to 10 dollars per gallon in some regions of the US. Therefore, consumers as a whole could be concerned about getting the best "bang-for-their-buck". 

Thus, our hypotheses are as follows: 
Null: MechaCar's average mpg is not greater than that of competitors
Alt: MechaCar's average mpg is greater than that of competitiors 

An Analysis of Variance test (ANOVA) would be the test to use because it would test the distribution means across multiple samples. The data needed would be MechCar's average mpg for different models and the same for competitiors. Additionally, tests could be specified by car type (sedan, truck, etc) and fuel efficiency by city and highway. 

