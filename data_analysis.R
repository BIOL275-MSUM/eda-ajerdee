
# Load Packages -----------------------------------------------------------

library(tidyverse)   #load tidyverse package 

# Read --------------------------------------------------------------------
table1 <- read_csv("~/Downloads/CRDT Data - CRDT.csv")  #read data 

table1

# Clean Data --------------------------------------------------------------
group_by(table1, State)

tableWhite <- summarize(table1, State, Cases_White, Deaths_White)  #Summary table of Whites

tableWhite #Print table White summary

tableBlack <- summarize(table1, State, Cases_Black, Deaths_Black)  #Summary table of Blacks

tableBlack  #Print table Black Summary 

tableLatinx <- summarize(table1, State, Cases_Latinx, Deaths_Latinx)  #summary table of Latinx

tableLatinx  #Print table Latinx Summary

tableAsian <- summarize(table1, State, Cases_Asian, Deaths_Asian)  #Summary table of Asian

tableAsian #Print table Asian Summary

tableAIAN <- summarize(table1, State, Cases_AIAN, Deaths_AIAN)   #Summary table of AIAN

tableAIAN  #Print table AIAN Summary

tableNHPI <- summarize(table1, State, Cases_NHPI, Deaths_NHPI)   #Summary table of NHPI

tableNHPI  #Print table NHPI Summary

tableMultiracial <- summarize(table1, State, Cases_Multiracial, Deaths_Multiracial)   #Summary table of Multiracial

tableMultiracial  #Print table Multiracial Summary

tableOther <- summarize(table1, State, Cases_Other, Deaths_Other)  #Summary table of Others

tableOther  #Print table Other Summary

tableUnknown <- summarize(table1, State, Cases_Unknown, Deaths_Unknown)  #Summary table of Unknown

tableUnknown  #Print table Unknown Summary

tableHispanic <- summarize(table1, State, Cases_Ethnicity_Hispanic, Deaths_Ethnicity_Hispanic)  #Summary table of Hispanic

tableHispanic  #Print table Hispanic Summary

tableNonHispanic <- summarize(table1, State, Cases_Ethnicity_NonHispanic, Deaths_Ethnicity_NonHispanic)  #Summary table of Nonhispanic

tableNonHispanic  #Print table Nonhispanic Summary








