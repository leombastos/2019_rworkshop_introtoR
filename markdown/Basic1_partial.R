## KSU Agronomy R Workshop - Basic 1 Agenda

# Housekeeping:
## Quick intro
## 4 hours split into 1 Basic, 2 intermediate, 1 advanced
## Questions related to content: ask me
## Questions related to problems: ask helpers
## Troubleshooting:
#   - R is case-sensitive!
#   - Watch for ( and )

# 1) R/Rstudio ----

## Why R? 
### free, 
### runs on multiple platforms, 
### online community and support, 
### continuous development, 
### reproducible research!

## Why RStudio?
### Integrates various components of an analysis
### Colored syntax
### Syntax suggestions

## RStudio pannels

# 2) R terminology ----
## Object
45
45/13
a<-45/13
a

b<-c(10,15,5)
b

c<-"Workshop"
c

## Object classes
### Data frames
d<- data.frame(Number=b,
               ID=c)
d
class(d)

### Matrices
e<- matrix(c(b,b), ncol=2)
e
class(e)

### Lists
f<- list("a" = a, "b" = b,
         "c" = c, "d" = d)
f
class(f)

class(f$b)

## Function
mean(b)
mean(x=b)

## Argument
help(mean)

b2<-c(10,15,5,NA)
mean(b2)

mean(na.rm = TRUE, b2)

install.packages("car")
## Package
## Install vs. load a package
## Install car and multcomp using the "Packages" tab
## Install broom using install.packages()

# 3) Creating the introductions data set ----
intro<-data.frame(Name=c(),
                  Year=c(),
                  Height=c(),
                  Pineapple=c())

# Check summary, structure and classes
class(intro)
summary(intro)
glimpse(intro)

head(intro)
tail(intro)

class(intro$Semester)

# Sampling the dataset
# First row only
intro[1,]

# First column only
intro[,1]

# Rows 1 to 4 and columns 1 to 3
intro[1:4,1:3]

# Rows 1 and 4 and columns 1 and 5
intro[c(1,4),c(1,4)]

# 4) ggplot2 philoshophy and plots ---- 

library(ggplot2)
# Point
ggplot(data = intro, mapping = aes(x=Name, y=Height))+
  geom_point()

ggplot(data = intro, mapping = aes(x=Name, y=Height))+
  geom_point(shape=2)

ggplot(data = intro, mapping = aes(x=Name, y=Height))+
  geom_point(aes(shape=Pineapple))

ggplot(data = intro, mapping = aes(x=Name, y=Height))+
  geom_point(aes(shape=Pineapple, color=Year))


# Boxplot
ggplot(data=intro, mapping = aes(x=Pineapple, y=Height, fill=Pineapple))+
  geom_boxplot(position = "dodge")+
  geom_point()
