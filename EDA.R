load("brfss2013.RData")

data <- brfss2013

library(dplyr)
library(ggplot2)

vet_data <- data %>%
  filter(veteran3 == "Yes")

non_vet <- data %>%
  filter(veteran3 == "No")

plot <- ggplot(vet_data, aes(sleptim1)) + geom_bar(aes(fill=sex))+ xlim(-1, 20)
  plot

plota <- ggplot(non_vet, aes(sleptim1)) + geom_bar(aes(fill=sex))+ xlim(-1, 20)
  plota
  
plot1 <- ggplot(vet_data, aes(avedrnk2)) + geom_bar(aes(fill=sex))+ xlim(-1, 20)
  plot1
  
plot1a <- ggplot(non_vet, aes(avedrnk2)) + geom_bar(aes(fill=sex))+ xlim(-1, 20)
  plot1a

plot2 <- ggplot(vet_data, aes(drnk3ge5)) + geom_bar(aes(fill=sex))+ xlim(-1, 20)
  plot2    

plot3 <- ggplot(vet_data, aes(X_bmi5cat)) + geom_bar(aes(fill=sex))
  plot3  

gen_data <- filter(brfss2013, !is.na(income2), !is.na(sex))  
plot4 <- ggplot(gen_data, aes(x= genhlth, fill = income2)) + geom_bar(position ="dodge") + 
  facet_wrap(~sex, ncol = 2)+theme(axis.text.x=element_text(angle=90,hjust=1,vjust=0.5))
plot4
