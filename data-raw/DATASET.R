## code to prepare `DATASET` dataset goes here

block_dat <- read.csv("/Users/sarahkmaebius/Documents/math241/math241S20PkgGrp10/data-raw/block_data.csv")

combined_dat <- read.csv("/Users/sarahkmaebius/Documents/math241/math241S20PkgGrp10/data-raw/combined.csv")

library(tidyverse)

combined_2 <- inner_join(combined_dat, block_dat, by = "block")
crows <- combined_2 %>%
  select("block","date","side","count","lat","long")

usethis::use_data(crows, overwrite = TRUE)
  



