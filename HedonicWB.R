#repeated measures Anova for HedonicWB, 3 groups (a, b, c)
library(plyr)
library(emmeans)
library(dplyr)
#import separate CSVss
#group A BL
BA=read.csv("BLa Writing and Mood Study 1 (Baseline Coded) - Form Responses 1.csv")
str(BA)
length(BA$PID)
BA$Session=rep(1, 43) #add session column
BA$Condition=rep("a", 43) #add group column 
str(BA)
#group A FU
FA=read.csv("FUA - Copy of (A) Writing and Mood Study 7 (Responses Recoded) - Form Responses 1.csv")
str(FA)
length(FA$PID)
FA$Session=rep(2, 43)
FA$Condition=rep("a", 43)
str(FA)
#group B BL
BB=read.csv("BLb Writing and Mood Study 1 (Baseline Coded) - Form Responses 1 (1).csv")
length(BB$PID)
BB$Session=rep(1, 38)
BB$Condition=rep("b", 38)
str(BB)
#group B FU
FB=read.csv("FUB Copy of  (B) Writing and Mood Study 7 (Responses Coded) - Form Responses 1.csv")
length(FB$PID)
FB$Session=rep(2, 38)
FB$Condition=rep("b", 38)
#group c B
BC=read.csv("BLc Writing and Mood Study 1 (Baseline Coded) - Form Responses 1.csv")
length(BC$PID)
BC$Session=rep(1, 40)
BC$Condition=rep("c", 40)
#group C FU
FC=read.csv("FUC Writing and Mood Study 7 (Responses Coded) - Form Responses 1.csv")
length(FC$PID)
FC$Session=rep(2, 39)
FC$Condition=rep("c", 39)

#group into DF
