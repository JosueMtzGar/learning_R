##### Introduccion a graficos

data(mtcars)

########### nubes de puntos

plot(x=mtcars$hp, y=mtcars$wt, main = "Título de la gráfica",
     xlab="caballos de fuerza",
     ylab="peso",col="red", pch = 19)

###### Grafico de barras

#fucion table() cuenta cuantos valores hay de cada tipo en un vector
count_cyl<-table(mtcars$cyl)

#la grafica de barras con la variable count
barplot(count_cyl, main = "Mi grafico de barras")

#otra forma de grafico de barras
barplot(count_cyl,main="Gráfico de barras",
        xlab="cilindros",ylab = "total",
        col = c("darkred","green","orange"))

#Histograma
hist(mtcars$hp,col = "darkgreen", breaks = 5)


########################################################################
############ paqueterias

#instalacion de pqueteria
#install.packages("ggplot2") #no volver a correr!

#2do paso: Llamar a la paquteria
library(ggplot2)

#### Histograma con ggplot
ggplot(data = mtcars, aes(x=hp)) +
  geom_histogram(fill = "salmon",col = "black", binwidth = 50)

### Nube de puntos con ggplot
ggplot(data = mtcars, aes(x=hp,y=wt)) +
  geom_point(aes(col="salmon",size = factor(cyl)))

#otras configuraciones
ggplot(data = mtcars, aes(x=hp,y=wt)) +
  geom_point(aes(col=factor(cyl),size = factor(cyl)),alpha=0.5) +
  theme_bw()
