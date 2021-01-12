library(dplyr)

# mechaCar
mechacar_data <- read.csv("Resources/MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data)
summary(mechacar_lm)
