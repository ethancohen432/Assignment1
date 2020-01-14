#Reading the measurements file, then setting it as MData variable
read.csv("measurements.csv")
MData <- read.csv("measurements.csv")

#Finding the volume of the limbs per species by multiplying their length and width
MData$Volume <- MData$Limb.Width*Limb.Length

      MData
      #Converting the limb lengths from mm to cm
      mmL <- subset(MData, unitsL == "mm")
      mmL [[5]]/100
      cmL <- mmL [[5]]/100
      
      #Converting a subset of limb widths from mm to cm
      mmW <- subset(MData, unitsW == "mm")
      mmW [3]/100
      cmW <- mmW[3]/100
      OriW <- subset(MData, unitsW == "cm")
      OriW[3]
      TotalW <- c(OriW, cmW)
      
      
      mmB <-subset(MData, unitsW == "mm" & unitsL == "mm")
      
      
      

#Plotting the limb length and width data
library(ggplot2)
library(stringr)
qplot (x=Limb.Width, y= Limb.Length, MData = MData, binwidth = 1, 
       xlab="Limb Width (cm)", ylab = "Limb Length (cm)", main = "Limb size comparison among feline species",
       size = I(3), alpha =I(0.9))
       