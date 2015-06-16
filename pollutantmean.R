pollutantmean <- function(directory, pollutant, id = 1:332) {
      somme<-0
      nombre<-0
      for (i in id) {
            x<-read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), ".csv", sep = ""))
            y<-x[!is.na(x[,pollutant]),]
            somme<-somme+sum(y[,pollutant])
            nombre<-nombre+nrow(y)
      }
      somme/nombre
}