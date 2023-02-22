setwd( "C:/Users/marti/Documents/R/Aprendiendo\ R")
library(ggplot2)

##### INTRODUCCION A ESTADISTICA

vinos <- read.csv("vinos.csv")

head(vinos)
View(head(vinos))

mex <- vinos[vinos$country == "Mexico", ]
por <- vinos[vinos$country == "Portugal", ]

#### Histograma suavizado
ggplot() +
  geom_density(data=por,aes(x=as.numeric(points))) +
  geom_histogram(data=por,aes(x=as.numeric(points),y=stat(density)),
                 fill = "green",alpha=0.5,binwidth = 1)

##### MEDIANA

#Potugal
median(as.numeric(por$points))

nrow(por[as.numeric(por$points)<88,])
nrow(por[as.numeric(por$points)>=88,])

table(por[as.numeric(por$points)<88,]$points)
table(por[as.numeric(por$points)>=88,]$points)

#Mexico
median(as.numeric(mex$points))

nrow(mex[as.numeric(mex$points)<84,])
nrow(mex[as.numeric(mex$points)>=84,])

table(mex[as.numeric(mex$points)<84,]$points)
table(mex[as.numeric(mex$points)>=84,]$points)

ggplot() +
  geom_density(data=mex,aes(x=as.numeric(points))) +
  geom_histogram(data=mex,aes(x=as.numeric(points),y=stat(density)),
                 fill = "orange",alpha=0.5,binwidth = 1)

## Se unen mexico y portugal

por1 <- data.frame(points = as.numeric(por$points),country = "Portugal")
mex1 <- data.frame(points = as.numeric(mex$points),country = "Mexico")

por_mex <- rbind(por1,mex1)

# tabla de medias y medianas de todos los paises.

medias_medianas <- data.frame(medias = tapply(as.numeric(vinos$points),
                                              vinos$country,
                                              mean),
                              medianas = tapply(as.numeric(vinos$points),
                                                vinos$country,
                                                median)
)

#ver si es simetrica la distribucion
medias_medianas$simetria <- ifelse(abs(medias_medianas$medias-medias_medianas$medianas)<0.5
                                   ,"Si","No")
#histograma para chile
chile <- vinos[vinos$country=="Chile",]

ggplot() +
  geom_density(data=chile,aes(x=as.numeric(points))) +
  geom_histogram(data=chile,aes(x=as.numeric(points),y=stat(density)),
                 fill = "red",alpha=0.5,binwidth = 1)

######## MODA

moda <- function(vector){
  tabla <- as.data.frame(table(vector))
  tabla <- tabla[tabla$Freq == max(tabla$Freq),]
  names(tabla) <- c("Moda","Frecuencia")
  return(tabla)
}

moda(c(1,1,1,1,2,5,5,6,4,2,1,4,6,66,6,6,6,6,6,6,6))


moda(mex$province)

### VARIANZA Y DESVIACION ESTANDAR

mis_paises <- vinos[vinos$country %in% c("Mexico","Portugal","Chile"),]

# Valor promedio de la calidad en cada paÃ­s
medias = data.frame(puntaje_medio = tapply(mis_paises$points,
                                           mis_paises$country,
                                           function(x){mean(x,na.rm=TRUE)}))

medias
medias$country <- row.names(medias)
medias

ggplot() +
  geom_density(data = mis_paises,
               aes(x=points,fill=country),
               alpha = 0.5,
               position = "identity") +
  geom_vline(data = medias,
             aes(xintercept = puntaje_medio,color=country)) +
  xlim(75,100)

tapply(mis_paises$points,
       mis_paises$country,
       function(x){sd(x,na.rm=TRUE)})

####################


sd(vinos[vinos$country=="Japan",]$points)

####################

## se calcula y filtra los paises con mas de 50 vinos
vinos$FAC <- 1

productos_paises <- data.frame(total = tapply(vinos$FAC,vinos$country,sum))
productos_paises$country <- row.names(productos_paises)

mayores <- productos_paises[productos_paises$total>50,]$country
mas_productores <- vinos[vinos$country %in% mayores,]

### ordenamiento respecto a las desviaciones estandar
calidad_estable <- data.frame(medias = tapply(mas_productores$points,
                                              mas_productores$country, function(x){mean(x,na.rm = TRUE)}),
                              desviaciones = tapply(mas_productores$points,
                                                    mas_productores$country, function(x){sd(x,na.rm = TRUE)})
)

calidad_estable$country  <- row.names(calidad_estable)
calidad_estable <- calidad_estable[order(calidad_estable$desviacion,
                                         calidad_estable$media,
                                         decreasing = c(FALSE,TRUE)),]
row.names(calidad_estable) <- 1:nrow(calidad_estable)

View(calidad_estable)

#########################

# Tabla de los tres países
mis_paises <- vinos[vinos$country %in% c("Mexico","Portugal","Chile",
                                         "Turkey"),]
# Valor promedio de la calidad en cada país
medias = data.frame(puntaje_medio = tapply(mis_paises$points,
                                           mis_paises$country,
                                           function(x){mean(x,na.rm=TRUE)}))

## se agrego a Turquia
medias$country <- row.names(medias)
ggplot() +
  geom_density(data = mis_paises,
               aes(x=points,fill=country),
               alpha = 0.5, 
               position = "identity") +
  geom_vline(data = medias,
             aes(xintercept = puntaje_medio,color=country)) +
  xlim(75,100)
