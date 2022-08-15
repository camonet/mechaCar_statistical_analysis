library(dplyr)
# Deliverable 1
mechacar_mpg <- read.csv("MechaCar_mpg.csv")
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacar_mpg) #generate multiple linear regression model
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacar_mpg)) #generate summary statistics

#Deliverable 2
suspcoil <- read.csv("Suspension_Coil.csv")
total_summary <- suspcoil %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary <- suspcoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3
t.test((suspcoil$PSI),mu=1500) #compare sample versus population means
#reject null hypothesis, PSI across all manufacturing lots is not statistically different from the population mean of 1500ppi
t.test((subset(suspcoil,Manufacturing_Lot=="Lot1")$PSI), mu = 1500)
t.test((subset(suspcoil,Manufacturing_Lot=="Lot2")$PSI), mu = 1500)
t.test((subset(suspcoil,Manufacturing_Lot=="Lot3")$PSI), mu = 1500)
