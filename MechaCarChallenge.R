library(dplyr)
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
mecha_lm <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_table)
summary(mecha_lm)

suspCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
suspCoil_summary <- suspCoil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
suspCoil_summary

lot_summary <- suspCoil_table %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary
