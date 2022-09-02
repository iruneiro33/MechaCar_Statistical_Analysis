library(tidyverse)

library(dplyr)

#Deliverable 1
Mechacar_mpg <- read.csv(file="MechaCar_mpg.csv")


# Linear regression
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=Mechacar_mpg)

# Summary stats
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=Mechacar_mpg))


#Deliverable 2
Suspension_Coil <- read.csv("Suspension_Coil.csv", check.names=F,stringsAsFactors = F)


#Create a total_summary dataframe

total_summary<- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI), .groups = 'keep')

#Create Lot_summary by grouping manufacturing by lot

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), STDEV_PSI=sd(PSI), .groups = 'keep')

#Deliverable 3

#Use t-test to determine statistical difference from the mean

t.test(Suspension_Coil$PSI,mu=1500)

#Use t-test with the subset function for each lot

t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu= 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu= 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu= 1500)

