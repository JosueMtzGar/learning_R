############## DARAFRAMES ################################

#Creacion
mi_dataframe <- data.frame(pais = c("Portugal","Luxemburgo","España"),
                           poblacion = c(1029898,716122,878971),
                           playa = c(TRUE,FALSE,TRUE))
mi_dataframe
View(mi_dataframe)

# columna = variables. filas = observables

#estructura. da que tipo de dato es cada columna y cuantas filas y columnas tiene
str(mi_dataframe)

#resumen. da un resumen de cada columna
summary(mi_dataframe)

head(mi_dataframe) #muestra los primeros 5 observables
tail(mi_dataframe) #muestra los ultimos 5 observables

#Se pone nombres en las filas
#mi_dataframe <- data.frame(pais = c("Portugal","Luxemburgo","España"),
                           #poblacion = c(1029898,716122,878971),
                           #playa = c(TRUE,FALSE,TRUE),
                           #row.names = c("U","V","W"))
View(mi_dataframe)

mi_dataframe <- data.frame(pais = c("Portugal","Luxemburgo","España"),
                           poblacion = c(1029898,716122,878971),
                           playa = c(TRUE,FALSE,TRUE))

row.names(mi_dataframe)          

#otra forma de poner nombres a las observables
row.names(mi_dataframe)<-c("U","V","W")
mi_dataframe


mi_dataframe$Portugal

otro_dataframe <- data.frame(
  c("Francia","Alemania"),
  c(231213,87623),
  c(TRUE,TRUE))

otro_dataframe

#cambia nombres
names(otro_dataframe)<-names(mi_dataframe)

rbind(mi_dataframe,otro_dataframe)

extra <- data.frame(capital = c("Lisboa","Luxemburgo","Madrid"),
                    mundial = c(TRUE,FALSE,NA))

extra

#pegado horizontal
cbind(mi_dataframe,extra)

#Add una columna
mi_dataframe$mundial<-c(TRUE,FALSE,NA)
mi_dataframe

#Add un renglon
mi_renglon <- data.frame(pais = c("México"),
                         poblacion = c(128000000),
                         playa = c(1),
                         mundial = c(TRUE))
mi_renglon

rbind(mi_dataframe,mi_renglon)

#elimina la fila 4
mi_dataframe[-4,]

###Eliminado de columnas
mi_dataframe$playa<-NULL

mi_dataframe


