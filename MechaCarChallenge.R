library(dplyr)

# mechaCar
mechacar_data <- read.csv("Resources/MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data)
summary(mechacar_lm)

# Suspension coil analysis -total
suspension_data <- read.csv("Resources/Suspension_Coil.csv",stringsAsFactors = F, check.names = F)
total_summary <- suspension_data %>% 
summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#by lot
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% 
summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

