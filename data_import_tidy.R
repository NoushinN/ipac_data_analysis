# load libraries
library(tidyverse)
library(here)
library(readxl)
library(tibble)
library(data.table)

# import data (sheet 7)
cspc_raw_7 <- read_excel(here("raw_data", "cspc_raw_2019.xlsx"), 
                               sheet = 7, col_names = FALSE,
                               .name_repair = "unique")


# fix column names
newcols_7 <- c("ID", "attendance", "career_stage",
             "overall", "forum", "connections", "capacity",
             "engagement", "welcomed", "edi", "diversity") 
  
# assemble new table
names(cspc_raw_7)<-paste(newcols_7)
sheet_7 <- cspc_raw_7[-c(1,2),] %>%
  mutate(ID = 1:nrow(sheet_7))

#------------------------------------------------------------

# import data (sheet 8)
cspc_raw_8 <- read_excel(here("raw_data", "cspc_raw_2019.xlsx"), 
                       sheet = 8, col_names = FALSE,
                       .name_repair = "unique")


# fix column names
newcols_8 <- c("ID", "career_1", "career_2", "career_3", "career_stage",
             "overall", "forum", "connections", "capacity",
             "engagement", "welcomed", "edi", "diversity") 

# assemble new table
names(cspc_raw_8)<-paste(newcols_8)
sheet_8 <- cspc_raw_8[-c(1,2),] %>%
  mutate(ID = 1:nrow(sheet_8))

# source script
.setup_sourced <- TRUE

