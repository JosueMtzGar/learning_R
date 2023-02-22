###########################
#### Trabajando con un Dataframe

data(mtcars)
View(mtcars)

#informacion del dataframe
?mtcars

#dimensiones del dataframe
dim(mtcars)
ncol(mtcars)
nrow(mtcars)

#visualiar parte de la tabla
head(mtcars, n = 3) #muestra las primeras 3 filas
# por default muestra las primeras 6

tail(mtcars, n = 3) #muestra las ultimas 3 filas
# por default muestra las ultimas 6

# ver estructura
str(mtcars)

#ver nombres de las filas
row.names(mtcars)

#ver nombres de las columnas
colnames(mtcars)

# muestra el resumen de cada columna
summary(mtcars)
summary(mtcars$gear) #resumen de una sola columna

summary(factor(mtcars$gear)) #resumen de acuerdo a una clasificacion en la columna

#tabla con carros con 4 cilindros
mtcars_filtrado<-mtcars[mtcars$cyl == 4, ]

#tabla con carros de 4 o 6 cilindros
mtcars[(mtcars$cyl == 4) | (mtcars$cyl == 6), ]

#muestra la tabla formada por elementos con 4 cilindeos o
# con tres engranes (los engranes son la columna gear)

mtcars[(mtcars$cyl == 4) | (mtcars$gear == 3) , ]

#  muestra la tabla formada por los elementos con 4 cilindros
# y con tres engranes. cuantos regustros cumplen esta condicion?

mtcars[(mtcars$cyl == 4) & (mtcars$gear == 3),]

#para saber cuantos hay
dim(mtcars[(mtcars$cyl == 4) & (mtcars$gear == 3),])

#muestra la tabla formada por los elementos que no tienen 4 cilindros
mtcars[mtcars$cyl != 4, ]

#para saber cuantos hay
nrow(mtcars[mtcars$cyl != 4, ])


#####
#### uso de %in%

#muestra nuevamente en la tabla formada por 4 o 6 cilindros utilizando %in%

mtcars[mtcars$cyl %in% c(4,6), ]

#otro uso de %in%

data1 <- data.frame(pais = c("Mex","Bra","Qa"), grupo = c(1,2,3))
data2 <- data.frame(pais = c("Arg","Ita","Chi"), numero = c(1,2,3),
                    grupo = c("a","b","c") )

names(data1)
names(data2)

names(data2) %in% names(data1) #ver que nombres de uno hay en el otro

#muestra los registros de lis elementos que tienen
#mas de 100 caballos de fuerza y a lo mas 105.

mtcars[mtcars$hp > 100 & mtcars$hp <= 105, ]

#add una columna donde este el cociente
# de los cilindros con el peso.

mtcars$columna_extra <- mtcars$cyl / mtcars$wt
mtcars

#ordenar mtcars respecto al numero de cilindros de forma creciente y
#luego de forma decreciente

mtcars[order(mtcars$cyl), ]  # de forma creciente

mtcars[order(mtcars$cyl, decreasing = TRUE), ]

#ordenar mtcars respecto al numero de cilindros y
#en caso de empate, respeto de la cilindrada.
#ambos en forma creciente(la cilindrada es displacement)

mtcars[order(mtcars$cyl,mtcars$disp), ]

#ahora el numero de cilindros en forma decreciente y 
#la cilindrada en forma creciente

mtcars[order(mtcars$cyl,mtcars$disp, decreasing = c(TRUE,FALSE)), ]
