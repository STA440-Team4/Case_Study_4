# Creating a Tidy Data Frame of Voter Data

if (!require("dplyr")) install.packages("dplyr")
library(dplyr)
if (!require("rvest")) install.packages("rvest")
library(rvest)

# Help for scraping and downloading zip files comes from
# https://stackoverflow.com/questions/46838858/r-web-scrapping-and-downloading-multiple-zip-files-and-save-the-files-without

url = "https://dl.ncsbe.gov/?prefix=data/"
page = read_html(url)
find_nodes = html_nodes(page, "a")

zip <- grep("a", html_nodes(page, "a.zip"), value = TRUE)
