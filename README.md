# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?  

Vehicle length and ground clearance both provided a non-random amount of variance to the mpg values. As seen in Figure 1, these two variables were the only ones that were not statistically insignificant.

#### Figure 1: Total Summary
![](Images/d1_lm_function.png)  

- Is the slope of the linear model considered to be zero? Why or why not?  

The slope of the linear model is not considered to be zero. In Figure 2, we see under the "Estimate" column that vehicle_weight and spoiler_angle are approximately zero, but vehicle_length, ground_clearance, and AWD are  not zero. When one adds up these five variables, the result will not be equal to zero.

#### Figure 2: Lot Summary
![](Images/d1_summary.png)

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?  

This linear model does not predict the mpg of MechaCar protoytpes effectively. In Figure 2, we see that Residual standard error is equal to 8.774. This is saying that the mpg for the prototypes has an error +/- 8.78 of gallons. This would be unacceptable. An acceptable standard error would be of 3 gallon or less. 



## Summary Statistics on Suspension Coils 
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?  

The current manufacturing data suggests that the design specification is met for all manufacturing lots in total. In Figure 3, we see that the total variance is approximately 62.29 PSI.

Each lot individually tells a different story. Lots 1 and 2 are in compliance with a variance of 0.98 and 7.47 PSI respectively, but Lot 3 is out of scope with a variance of 170.29 PSI (Figure 4).  

#### Figure 3: Suspension Coil PSI Total Summary
![](Images/d2_total_summary.png)

#### Figure 4: Suspension Coil PSI by Lot
![](Images/d2_lot_summary.png)



## T-Tests on Suspension Coils

A t-test was conducted on all lots, and on each lot individually. 

#### Figure 5: T-Test (All Lots)
![](Images/d3_t.test_all_lots.png)

t = -1.8931, indicating a negative relationship.

#### Figure 6: T-Test (Lot 1)
![](Images/d3_lot1_test.png)

t = 0, indicating no relationship.

#### Figure 7: T-Test (Lot 2)
![](Images/d3_lot2_test.png)

t = 0.51745, indicating a positive relationship.

#### Figure 8: T-Test (Lot 3)
![](Images/d3_lot3_test.png)

t = -2.0916, indicating a negative relationship.

Overall, the t-test indicates that a relationship does exist between the mpg and the variable indicated, with the exception of Lot 1. Lot 1 shows that no relationship exists.

## Study Design: MechaCar vs Competition

In addition to mpg, another metric of interest to study is that of MechaCar ground clearance height and its relationship with maintenance costs, compared to that of the competition.  A possible null and alternate hypothesis combination is as follows:

- Null Hypothesis: Ground clearance height has no effect on annual maintenance costs.
- Alternate Hypothesis: Ground clearance height has an effect on annual maintenance costs.

A one-sample t-test would best be used in this situation, since we would be trying to determine whether there is a statistical difference between an observed sample mean and its presumed population mean.  

In order to conduct this statistical test, we would need to collect data on the total annual maintenance costs of MechaCars as well as by Lot.