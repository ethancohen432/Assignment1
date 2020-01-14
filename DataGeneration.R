#Selected 10 randam species within the Order of Felidae
Species <- c("Felis catus", "Puma concol", "Otocolobus manul","Ancinonyx jubatus",
             "Lynx canadensis","Leopardus paradalis", "Caracal caracal", 
             "Pardofelis badia", "Panthera leo", "Neofelis nebulosa")
#Generated 
Limb.Width <- abs(c(rnorm(10,10,10)))

indexes <- rbinom(10,1,0.5) + 1
units <- c("cm", "mm")
unitsW <- units[indexes]

Limb.Length <- abs(c(rnorm(10,100,100)))

indexes2 <- rbinom(10,1,0.5) + 1
units <- c("cm", "mm")
unitsL <- units[indexes2]

MyData <- data.frame(unitsW,unitsL)

