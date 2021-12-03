#########################
##### DELIVERABLE 1 #####
#########################

library(tidyverse)
library(dplyr)
mechacars = read.csv("MechaCar_mpg.csv")
suspension_coil = read.csv("Suspension_Coil.csv") # Deliverable 2


lm_function <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacars)
lm_function
# mpg = dependent variable, everything else = independent variable
# "~" symbol references relationship above. Dep on left, ind on right.
summary(lm_function)

#########################
##### DELIVERABLE 2 #####
#########################

head(suspension_coil)
total_summary <- suspension_coil  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep") #create summary table with multiple columns
total_summary

lot_summary <- suspension_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep")


#########################
##### DELIVERABLE 3 #####
#########################

# t-test across all Lots
t.test(suspension_coil$PSI,mu = 1500)

# t-test on Lot 1
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# t-test on Lot 2
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# t-test on Lot 3
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)




