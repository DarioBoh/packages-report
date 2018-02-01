## deja vu from yesterday!
library(tidyverse)
## create a data frame of your installed packages
inst <- as_data_frame(installed.packages())
## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
inst %>% select(Package, LibPath, Version, Priority, Built)
## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like
write_csv(inst, here('data', 'installed-packages.csv'))
## when this script works, stage & commit it and the csv file
## PUSH!
