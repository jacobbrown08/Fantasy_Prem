library(ggplot2)
library(ggrepel)
library(readxl)

GW4_Fwd <- read_excel("C:/Users/jacob/Desktop/FPL_Stats/GW4/GW4_Fwd.xlsx")
View(GW4_Fwd)

GW4_Mid <- read_excel("C:/Users/jacob/Desktop/FPL_Stats/GW4/GW4_Mid.xlsx")
View(GW4_Fwd)

GW4_Def <- read_excel("C:/Users/jacob/Desktop/FPL_Stats/GW4/GW4_Def.xlsx")
View(GW4_Fwd)

#Create Visualization for GW4_Fwd
Week4Fwd <- ggplot(GW4_Fwd, mapping = aes(x = Cost, y = xGi, label = Name)) + geom_point(color = "blue") 
Week4Fwd + 
  geom_label_repel(aes(label = ifelse(xGi>2.0,as.character(Name), '')),
                   box.padding = 0.0,
                   point.padding = 0.25,
                   force = 75,
                   segment.color = 'grey50') +
  theme_minimal()

#GW4 xGi v Real Points for GW4_Fwd
RealvExpFwd <- ggplot(GW4_Fwd, mapping = aes(x = xGi, y = Pts., label = Name)) + geom_point(color = "blue") +
  ggtitle("Expected Goal Involvement vs. Total FPL Points","Forwards at End of GW4")
RealvExpFwd +
  geom_label_repel(aes(label = ifelse(Pts.>15,as.character(Name), '')),
                   box.padding = 0.0,
                   point.padding = 0.25,
                   force = 75,
                   segment.color = 'grey50') +
  theme_minimal()

#Create Visualation for GW4_Mid
Week4Mid <- ggplot(GW4_Mid, mapping = aes(x = Cost, y =xGi, label = Name)) +
  geom_point(color = "blue")
Week4Mid +
  geom_label_repel(aes(label = ifelse(xGi>2.0,as.character(Name), '')),
                   box.padding = 0.0,
                   force = 75,
                   point.padding = 0.25,
                   segment.color = 'grey50') +
  theme_minimal()

#GW4 xGi v Real Pts for GW4_Mid
RealvExpMid <- ggplot(GW4_Mid, mapping = aes(x = xGi, y = Pts., label = Name)) + geom_point(color = "blue") +
  ggtitle("Expected Goal Involvement vs. Total FPL Points","Midfielders at End of GW4")
RealvExpMid +
  geom_label_repel(aes(label = ifelse(Pts.>14,as.character(Name), '')),
                   box.padding = 0.0,
                   point.padding = 0.25,
                   force = 75,
                   segment.color = 'grey50') +
  theme_minimal()

#Rinse and Repeat for GW4_Def
Week4DefA <- ggplot(GW4_Def, mapping = aes(x = Cost, y =xGi, label = Name)) +
  geom_point(color = "blue")
Week4DefA +
  geom_label_repel(aes(label = ifelse(xGi>0.9,as.character(Name), '')),
                   box.padding = 0.0,
                   point.padding = 0.25,
                   segment.color = 'grey50')+
  theme_minimal()

#GW4_Def but actual defending numbers
Week4DefD <- ggplot(GW4_Def, mapping = aes(x = GAgainst, y =xGi, label = Name)) +
  geom_point(color = "blue")
Week4DefD +
  geom_label_repel(aes(label = ifelse(GAgainst<=4,as.character(Name), '')),
                   force = 75,
                   box.padding = 0.0,
                   point.padding = 0.25,
                   segment.color = 'grey50')+
  theme_minimal()

#xGi v Real Pts Defenders
RealvExpDef <- ggplot(GW4_Def, mapping = aes(x = xGi, y = Pts., label = Name)) + geom_point(color = "blue") +
  ggtitle("Expected Goal Involvement vs. Total FPL Points","Defenders at End of GW4")
RealvExpDef +
  geom_label_repel(aes(label = ifelse(Pts.>10,as.character(Name), '')),
                   box.padding = 0.0,
                   point.padding = 0.25,
                   force = 75,
                   segment.color = 'grey50') +
  theme_minimal()

