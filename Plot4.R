#clean console
cat("\014")

#clean all variables
rm(list=ls(all=TRUE))

# install required packages
if (!"ggplot2" %in% installed.packages()) install.packages("ggplot2")
if (!"dplyr" %in% installed.packages()) install.packages("dplyr")

library(ggplot2)
library(dplyr)

# download data if needed
if ( !file.exists("Source_Classification_Code.rds") && !file.exists("summarySCC_PM25.rds") ){ 
  download.file("https://d396qusza40orc.cloudfront.net/exdata/data/NEI_data.zip", "NEI_data.zip");
  unzip("NEI_data.zip",overwrite=TRUE);
}

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")