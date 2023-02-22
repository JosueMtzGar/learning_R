getwd()

setwd( "C:/Users/marti/Documents/R/Aprendiendo\ R")

getwd()

dir()

setwd("../") #sube un directorio

getwd()

setwd("./Aprendiendo R")
getwd()

mi_data <- data.frame(co1=c(1,2,3),col2=c(4,5,6))
mi_vector <- c(1:2022)
mis_frase <- "Hoy es un buen día"

### Lectura de .csv

temperaturas<-read.csv("NYC temperature data.csv")

### Escritura de un .cvs
write.csv(temperaturas, "mis_temperaturas.csv", row.names = FALSE)

mi_data <- data.frame(colores = c("Azul","Rojo","Verde"),
                      cantidad = c(1,NA,2))

write.csv(mi_data, "mis_colores.csv",row.names = FALSE)

colnames(temperaturas)

class(temperaturas$date)
class(temperaturas$average_precipitation)

##### Lectura de excel

#libreria para leer exel
#install.packages("readxl")
library(readxl)

mi_excel <- read_excel("mi_excel.xlsx",sheet = 2)
