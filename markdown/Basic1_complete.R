## KSU Agronomy R Workshop - Basic 1 Agenda

# Housekeeping:
## 4 hours split into 1 Basic, 2 intermediate, 1 advanced
## Questions related to content: ask me
## Questions related to problems: ask helpers

# 1) R/Rstudio ----

## Why R? 
### free, 
### runs in multiple platforms, 
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
a <- 45/13
a

b <- c(10,15, 5)
b

c <- "Workshop"
c

## Object classes
### Data frame
d <- data.frame(Number=b,
                ID=c)

d

### Matrices
e <- matrix(c(b,b), ncol = 2 )
e

### Lists 
f <- list("a" = a, "b" = b,
          "c" = c, "d" = d)

f

class(f)

class(f$b)


## Function
mean(b)

mean(x = b)

## Argument
help("mean")

b2 <- c(10,15,5,NA)

mean(b2)

mean(x = b2, na.rm = TRUE)
mean(b2, TRUE)

mean(na.rm=T, x = b)



## Package
## Install vs. load a package
## Install ggplot2 using the "Packages" tab
## Install dplyr using install.packages()

# 3) Creating the introductions data set ----
intro <- data.frame(Name=c("Chris", "Diego", "Pedro", "Mandy", "Martha"),
                  Year=c(5, 5, 4, 6, 7),
                  Height=c(1.96, 1.92, 1.76, 1.75, 1.61),
                  Pineapple=c("N", "N", "N", "Y", "Y"))

# Check summary, structure and classes
class(intro)
summary(intro)

head(intro)
tail(intro)

class(intro$Pineapple)

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
ggplot(data = intro, mapping = aes(y=Height, x=Name))+
  geom_point(shape=3)

