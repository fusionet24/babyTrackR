#' get example data
#'@description Get Quentins example data from the App for data analysis
#' @return tibble of quentins data
#' @export
#'
#' @examples getExampleData
getExampleData <- function()
{


}


#' Load in data from the Baby Tracker App
#' @description
#' @param folderlocation folder where the various CSVS are stored.
#'
#' @return tibble of sleep, feed and diaper data
#' @export
#'
#' @examples loadData('Quentin/data')
loadData <- function(folderlocation)
{

  #files <- list.files(path ="data/csv/",ignore.case = TRUE,include.dirs = TRUE ,pattern = "*.csv")
  #data_list <- c("\\bdiaper\\b") # only files currently supported because of common schema
  #stringr::str_subset(files,data_list)

  diaper <- readr::read_csv("data/csv/Quentin_diaper.csv",col_names = TRUE,
                            cols(
                              Baby = col_character(),
                             # Time = col_datetime(format = "%d/%m/%y, %H:%M"),
                             Time = col_character(),
                              Status = col_character(),
                              Note = col_character()
                            ))



}
