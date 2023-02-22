#######################################################################
############ LISTAS ###################################
  
lista_ejemplo <- list(1,2,"3",list("a", 2))

typeof(lista_ejemplo)
class(lista_ejemplo)

mi_lista <- list(c(1,2,3),
                 array(data = 1:4, dim = c(2,2)),
                 TRUE)
mi_lista

#se pueden dar nombres a los elementos de la lista
mi_lista <- list(mi_vector = c(1,2,3),
                 mi_array = array(data = 1:4, dim = c(2,2)),
                 mi_booleano = TRUE)
mi_lista
names(mi_lista)

#add nombres
names(mi_lista) <- c("mi_vector", "mi_array", "mi_booleano")

mi_lista

#cambiar un nomnbre en la lista
names(mi_lista)[3] <- "mi_logico"
mi_lista

#no todos los elementos de las listas pueden tener nombre
lista_nombres <- list(c(1,2,3), letra = "a", TRUE) 

names(lista_nombres)
lista_nombres

#funcion estructura tambien se puede aplicar a las listas
str(mi_lista)


######################################################################
############### INDEXADO ######################################

mi_lista[2]
mi_lista[[2]]
class(mi_lista[2])
class(mi_lista[[2]])

#entrar al elemento 2,2 de la matriz elemento 2 de la lista
mi_lista[[2]][2,2]

#con nombres
mi_lista["mi_logico"]  #nivel lista
mi_lista[["mi_logico"]]  #nivel elemento

#cambiando un elemento de la matriz en la lista
mi_lista[["mi_array"]][1,]<-c(3,4)
mi_lista

########################################################################
######## MODIFICANDO LISTAS

ejemplo_lista <- list(c("a","b","c"),array(1:10,dim=c(2,5)))

#add elements to a list
#se usa el indexazp subyacente

ejemplo_lista
ejemplo_lista[[5]]<-c(1,2,3)
ejemplo_lista

#cambiar el elemento 5 por un booleano
ejemplo_lista[[5]]<- TRUE
ejemplo_lista

#eliminacion de elementos
ejemplo_lista[2]<- NULL
ejemplo_lista

ejemplo_lista[[2]]<- NULL
ejemplo_lista


mi_lista <- list(mi_vector = c(1,2,3),
                 mi_array = array(data = 1:4, dim = c(2,2)),
                 mi_booleano = TRUE)
mi_lista
mi_lista$mi_vector<-NULL
mi_lista

#elimacion de varios elementos de la lista
mi_lista[-c(1,3)]


#########################################################################
###### COMBINACION DE LISTAS

lista1 <- list(c(1,2),"A")
lista2 <- list("l1" = c(10,11),matrix(1:10,nrow=5,ncol=2))

#utilizamos el operasoe de concatenacion: c()

lista_extendida<-c(lista1,lista2)

class(lista_extendida)
str(lista_extendida)
