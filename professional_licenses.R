# Proefssional license data

# Script originally written by: Niklas Harder

# Further contributors: 

# IPL members can download the data here: 
# https://www.dropbox.com/s/roxy7bg9rvwmsri/breeze00.csv?dl=0

# Set the working directoty, please change accordingly
setwd("C:/Users/nharder/Dropbox (IPL)/prof_licenses")

# Load packages -----------------------------------------------------------

library("foreign")
library("lubridate")

# Reading the data --------------------------------------------------------

b0 <- read.csv("breeze00.csv")

# Write data as .dta ------------------------------------------------------

write.dta(b0, "breeze00.dta")

# Define dates ------------------------------------------------------------

b0$issue <- mdy(b0$Original.Issue.Date)
b0$expi <- mdy(b0$Expiration.Date)

