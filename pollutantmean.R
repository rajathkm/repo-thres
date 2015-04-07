pollutantmean <- function(directory, pollutant, id) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    count = 0
    msum = 0
    id1 = id[1]
    len <- length(id)
    loc <- paste(getwd(),directory,"/")
    for (i in 1:len){
        fil = as.character(id1)
        fname = paste(fil,"csv", sep = ".")
        f <- read.csv(fname)
        bad <- is.na(f[[pollutant]])
        mean1 <- mean(x[[pollutant]])
        counter = counter + 1
        msum = msum + mean1
        id = id + 1
    }
    mean2 = msum/count
    print(mean2)
}