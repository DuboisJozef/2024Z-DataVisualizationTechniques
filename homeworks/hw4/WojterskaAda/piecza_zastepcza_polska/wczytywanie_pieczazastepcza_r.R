# load_data.R

library(readxl)
library(tidyr)

wczytywanie_pieczazastepcza_r <- function(file_path) {

  df <- read_excel(file_path, sheet = 1)
  
  colnames(df) <- c("Region", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023")
  
  data_long <- pivot_longer(df, cols = -Region, names_to = "Rok", values_to = "WartoscR")
  
  data_long <- as.data.frame(data_long)
  
  return(data_long)
}