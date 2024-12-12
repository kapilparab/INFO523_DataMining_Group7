packages <- c("dplyr", "ggplot2", "tidyverse", "tigris", 
              "ggrepel", "arules", "arulesViz", "randomForest", "sf",
              "caret", "ggfortify"
)

packagecheck <- match( packages, utils::installed.packages()[,1] )

packagestoinstall <- packages[ is.na( packagecheck ) ]

if( length( packagestoinstall ) > 0L ) {
  utils::install.packages( packagestoinstall)
} else {
  print( "All requested packages already installed" )
}