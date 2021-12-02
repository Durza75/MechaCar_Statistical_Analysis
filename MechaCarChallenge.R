#########################
##### DELIVERABLE 1 #####
#########################
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
