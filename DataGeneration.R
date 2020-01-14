#Selected 10 randam species within the Order of Felidae
Species <- c("Felis catus", "Puma concol", "Otocolobus manul","Ancinonyx jubatus",
             "Lynx canadensis","Leopardus paradalis", "Caracal caracal", 
             "Pardofelis badia", "Panthera leo", "Neofelis nebulosa")

#Limb.Width is a vector whcih possesses 10 random positive values
Limb.Width <- abs(c(rnorm(10,10,10)))

#unitsW consists of random string of either "cm" or "mm" created by a binomial distribution
indexes <- rbinom(10,1,0.5) + 1
units <- c("cm", "mm")
unitsW <- units[indexes]

#Limb.Length is a vector whcih possesses 10 random positive values
Limb.Length <- abs(c(rnorm(10,100,100)))

#unitsL consists of random string of either "cm" or "mm" created by a binomial distribution
indexes2 <- rbinom(10,1,0.5) + 1
units <- c("cm", "mm")
unitsL <- units[indexes2]

#Combining all vectors
MyData <- data.frame(Species, Limb.Width, unitsW,Limb.Length,unitsL)

#Exporting MyData
write.csv(MyData, file="measurements.csv", sep=",")
