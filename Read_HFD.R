
#   Read the active incident table from the City of Houston website

#   The table is updated every 5 minutes, not sure how quickly it falls off.


library(tidyverse)
library(stringr)

path <- "/home/ajackson/Dropbox/Rprojects/Curated_Data_Files/HFD_Incidents/"

url <- "https://cohweb.houstontx.gov/ActiveIncidents/Combined.aspx?agency=%"

#  is file still there?

if(!RCurl::url.exists(url)) {
  system(paste('echo ',url,' | mail -s "Read_HFD URL failure" alankjackson@gmail.com'))
  stop(">>>>>>>>>>>>>>>>>>>> url no longer works")
}


tbls_ls <- xml2::read_html(url) %>%
  rvest::html_elements(xpath='//*[@id="GridView2"]') %>%
  rvest::html_table(fill = TRUE)

#   Save this in case of catastrophic failure

saveRDS(tbls_ls ,paste0(path, "Incrementals/",
                        str_replace(lubridate::now(), " ", "_"),
                        "_rawtable.rds"))

#   And we pluck out a beautiful table

df <- tbls_ls[[1]]  

#  Let's save our table

saveRDS(df ,paste0(path, "Incrementals/",
                        str_replace(lubridate::now(), " ", "_"),
                        "_table.rds"))







