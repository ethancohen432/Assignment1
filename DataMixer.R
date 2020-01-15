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
      

R.Limb.length <- round(Limb.Length, digits = 2)      
R.Limb.width <- round(Limb.Width, digits = 2)
New.unitsL <- ("cm")
New.unitsW <- ("cm")
Test <- data.frame(Species, R.Limb.width, New.unitsW, R.Limb.length, New.unitsL)


#Plotting the limb length and width data
library(ggplot2)
library(stringr)

qplot (x=Limb.Width, y=Limb.Length, data = MData, 
       xlab="Limb Width (cm)", ylab = "Limb Length (cm)", 
        main = "Limb size comparison among feline species", 
          size = I(3), alpha=I(0.9))

qplot (x=Limb.Width, y=Limb.Length, data=MData,
       xlab="Limb Width (cm)", ylab="Limb Length (cm)", 
        main="Limb size comparison among feline species",
          colour=I(rgb(0,0,0)),size = I(4), alpha =I(0.8), shape=I(16)) + theme_linedraw() + 
            geom_point() + geom_text(aes(label=Species),hjust=-0.05, vjust=0.3) 

install.packages("ggrepel")
library(ggrepel)

qplot (x=Limb.Width, y=Limb.Length, data=MData,
       xlab="Limb Width (cm)", ylab="Limb Length (cm)", 
        main="Limb size comparison among feline species",
          colour=I(rgb(0,0,0)),size = I(4), alpha =I(0.8), shape=I(16)) + 
              geom_label_repel(aes(label=Species), box.padding=  0.35, 
                point.padding = 0.5, segment.color = 'grey50', force = 1, 
                  max.iter = 2000)
       