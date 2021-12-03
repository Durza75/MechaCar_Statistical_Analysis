# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

#### Figure 1: Total Summary
![](Images/d1_lm_function.png)  


#### Figure 2: Lot Summary
![](Images/d1_summary.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?  

Vehicle length and ground clearance both provided a non-random amount of variance to the mpg values. As seen in Figure 1, these two variables were the only ones that were not statistically insignificant.

- Is the slope of the linear model considered to be zero? Why or why not?  

The slope of the linear model is not considered to be zero. In Figure 2, we see "Multiple R-squared: 0.7149." This means that about 71% of the variability of the dependent variable (mpg predictions) is explained using this linear model. For the slope of the model to be considered zero, the value would have to be less than 5%.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?  

This linear model predicts mpg of MechaCar prototypes effectively with an R-squared value of 71%.


## Summary Statistics on Suspension Coils 
- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?  

#### Figure 3
![](Images/d2_total_summary.png)

#### Figure 4
![](Images/d2_lot_summary.png)



## T-Tests on Suspension Coils

#### Figure 5
![](Images/d3_t.test_all_lots.png)

## Study Design: MechaCar vs Competition

#### Figure 6
![](Images/d2_total_smmary.png)