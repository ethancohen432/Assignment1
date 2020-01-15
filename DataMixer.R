#Reading the measurements file, then setting it as MData variable
read.csv("measurements.csv")
MData <- read.csv("measurements.csv")

#Standardizing the units to cm, and converting all values to from mm to cm as well
for (i in 1:length(MyData$unitsW)){
  if (MyData$unitsW[i] == "mm"){
    MyData$Limb.Width[i] = MyData$Limb.Width[i]/10
    MyData$unitsW[i] = "cm"
  }
}

for (i in 1:length(MyData$unitsL)){
  if (MyData$unitsL[i] == "mm"){
    MyData$Limb.Length[i] = MyData$Limb.Length[i]/10
    MyData$unitsL[i] = "cm"
  }
}


#Making a volume column of the limbs per species by multiplying their limb lengths and widths
MData$Volume <- pi*(MData$Limb.Width/2)^2*Limb.Length


#Plotting the limb length and width data
library(ggplot2)
library(stringr)
install.packages("ggrepel")
library(ggrepel)

qplot (x=Limb.Width, y=Limb.Length, data=MyData,
       xlab="Limb Width (cm)", ylab="Limb Length (cm)", 
        main="Limb size comparison among feline species",
          colour=I(rgb(0,0,1)),size = I(4), alpha =I(0.8), shape=I(16)) + 
              geom_label_repel(aes(label=Species), box.padding=  0.35, 
                point.padding = 0.5, segment.color = 'grey50', force = 1, 
                  max.iter = 2000)
       