# library(RcmdrPlugin.IPSUR)
# data(RcmdrTestDrive)
# Perform the below operations:

# 1. Compute the measures of central tendency for salary and 
#    reduction which variable has highest center?

# first find the measures of central tendency
#for salary
install.packages("RcmdrPlugin.IPSUR")
library(RcmdrPlugin.IPSUR)
x<- c(mean(RcmdrTestDrive$salary),median(RcmdrTestDrive$salary))
x
# 724.5164 710.1500

#for reduction
y<- c(median(RcmdrTestDrive$reduction),mean(RcmdrTestDrive$reduction))
y
# 139.500 223.631

# we can check for variable which has highest center by plotting histogram 
# or by checking kurtosis which describes the amount of peakedness of a distribution.
library(psych)
kurtosi(RcmdrTestDrive$salary)
# 0.2006576

kurtosi(RcmdrTestDrive$reduction)
# 10.01655

# Variable reduction has more kurtosis and more peaked hence more highest center

# histogram also gives a clear picture towards this
y<-RcmdrTestDrive$reduction
h<- hist(y, breaks = 10, col = "green", xlab = "reduction", 
         main= "histogram of reduction with normal curve")

x<-RcmdrTestDrive$salary
h<- hist(x, breaks = 10, col = "yellow", xlab = "salary", 
         main= "histogram of salary with normal curve")

# reduction is not completely continuous so there will be no peak for center
# salary is more peaked from center as it is continous
# from whole data perspective variable reduction is more peaked by 
# seeing histo curve overall as compare to salary variable

# 2. Which measure of center is more appropriate for before and after?

# If the distribution is well balanced then the difference between mean 
# and median will be very less.

# by boxplot we can check for median where it lies 
boxplot(RcmdrTestDrive$after,horizontal = T,col = "blue",xlab="after",ylab="Boxplot")

# More data is concentrated on Left because of assymetrical distribution
boxplot(RcmdrTestDrive$before,horizontal = T,col = "red",xlab="before",ylab="Boxplot")

# balanced distribution
# So median would be more appropriate for the measure of center
