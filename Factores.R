as.logical(56)

numero = 1L
class(numero)
typeof(numero)


#####################################################################
#FACTORES
sexos <- c("hombre","mujer","hombre","hombre","mujer")

sexo_factor <- factor(sexos)
sexo_factor

as.numeric(sexo_factor)


###################################################################
#Arrays
vector_array <- c(24,31,35,42,49,50,51,58)

#array de dos filas, 4 columnas y una sola capa
array(data = vector_array, dim = c(2,4))

#array de dos filas, 3 columnaas y cuatro capas
mi_array<-array(data = vector_array, dim = c(2,3,5))

class(mi_array)

#dimensiones del array
dim(mi_array)

#columnas y dilas de cada capa
ncol(mi_array)
nrow(mi_array)

#otra forma 
dim(mi_array)[1] #filas
dim(mi_array)[2] #columnas
dim(mi_array)[3] #capas

#mandar a llamar toda la segunda capa
mi_array[ , ,2]

#mandar a llamar la primer columna de la tercera capa
mi_array[ ,2,3]

#mandar a llamar las columnas 1y3 de la cuarta capa
mi_array[,c(1,3),4]

#mandar a llamar la segunda fila tercera columna de la quinta capa
mi_array[2,3,5]

#mandar a llamar la tercera columna de todas las capas
mi_array[,3,]

#mandar a llamar las columnas 2 y 3 de las capas 1,3 y 5
mi_array[,c(2,3),c(1,3,5)]



#################################################################
######## Modificacion de arrays

mi_array[1,,]

mi_array[1,,]<-1
mi_array

mi_array[1:2,1:2,3] <- array(c(1,2),dim=c(2,2))

mi_array[,,3]

################################################################
##########Opereciones con arrays

mi_array <- array(data = vector_array, dim = c(2,3,5))

#raiz ciadrada de la primer capa
mi_array[,,1]<-sqrt(mi_array[,,1])
mi_array

#cambiar la segunda columna de la tercera capa por sus cuadrados
mi_array[,2,3]<-mi_array[,2,3]^2
mi_array

#cambiar el elemento situado en la segunda fila de la tercer 
#columna de la quinta capa por 2022
mi_array[2,3,5]<-2022
mi_array

###############################################################
#############Propided de nombres

mi_array <- array(data = vector_array, dim = c(2,3,5))

mi_array <- array(data = vector_array,
                  dim = c(2,3,5),
                  dimnames = list(c("hombre","mujer"),
                                  c("edad","peso","altura"),
                                  c("México","Argentina","Perú","Chile","Colombia"))
)

mi_array

mi_array[,c("edad","altura"),"México"]

dimnames(mi_array)

dimnames(mi_array)[[3]][2]<-"Ecuador"

mi_array1 <- array(data=c(1:4), dim = c(2,3))
mi_array2 <- array(data=c(5:9), dim = c(4,3))
mi_array3 <- array(data=c(10:15), dim = c(2,5))

mi_array1
mi_array2

#pegado con columnas iguales
rbind(mi_array1,mi_array2)

#pegado con filas iguales
cbind(mi_array1,mi_array3)

##############################################################################
########### MATRICES #######################################################  

#se define una matriz, se llena por columna
matrix(data = c(1,4,2,7,9,10), nrow =4, ncol =5)

#para llenar pr filas
matrix(data = c(1,4,2,7,9,10), nrow =4, ncol =5, byrow = TRUE )

##### Operaciones con matrices
matriz_1 <- matrix(1:4,nrow=2,ncol=3)
matriz_2 <- matrix(200:203,nrow=2,ncol=3)

#multiplicacion puntual (elemento a elemento)
matriz_1
matriz_2
matriz_1*matriz_2

#Suma y Resta (elemento a elemento)
matriz_1 + matriz_2
matriz_1 - matriz_2

#multiplicacion por escalar
2*matriz_1
matriz_1/2

matriz_1/matriz_2

#Multuplicacion algebraica de matrices
matriz_1 %*% matriz_2 #no tienen numero de columnas de 1 igual al numero de filas de 2

matriz_3 <- matrix(c(10:13),nrow = 3, ncol =20)
View(matriz_3)

matriz_1 %*% matriz_3

#Transposicon de matrices
matriz_1
t(matriz_1)
