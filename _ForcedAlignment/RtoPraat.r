#################### Maud Westendorp, March 2021 ########################
###Script for making TextGrids from NWD database
###Prerequisites: dummy TextGrid (download that to your computer and change the filepath in line 26)
###Result: TextGrids for all informants(by SoundMatch) in dataframe

library(phonfieldwork)
library(dplyr)
library(stringr)
setwd("") #dir for output files

#load dataset
load("~/")

#df_to_tier requires 3 columns: start time, end time and content
data <- data %>% select(speaker, Begin.Time...ss.msec, End.Time...ss.msec, Realization)

data$Realization <- str_to_upper(data$Realization) #make Realization upper case for PowerSandher
data$Realization <- paste("_BEEP_ ", data$Realization, sep = "")
splitData <- split(data, data$speaker)

allNames <- names(splitData)
 for(thisName in allNames){
 	splitData[[thisName]]$speaker <- NULL
    colnames(splitData[[thisName]]) <- c("time_start", "time_end", "content")
	splitData[[thisName]]$id <- 1:184 #manually assign number of utterances
	col_order <- c("id", "time_start", "time_end", "content")
	splitData[[thisName]] <- splitData[[thisName]][, col_order]

	tiers <- df_to_tier(splitData[[thisName]], tier_name = paste0(thisName), textgrid = "~/Desktop/rPraat/dummy_RtoPraat.TextGrid", overwrite = F) #change the location of the textgrid dummy to make sure it runs on your computer!
	write.table(tiers, paste0(thisName,".TextGrid"), sep = "", row.names=F, quote=F, col.names=F)

	rm(tiers)
	rm(col_order)
 }
