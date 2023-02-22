 

#********* Funciones de Agregacion ********************
#suma y multiplicacion
sum(mis_personas) # suma los elementos del vector
prod(mis_personas) # multiplica los elementos del vector

# con NAN
faltante_NA<-c(1,2,3,NA,4)
faltante_NA

#el NA se come toda la suma
sum(faltante_NA)

#para evitarlo se usa na.rm=TRUE remueve los NA y hace la suma
sum(faltante_NA, na.rm=TRUE)

#lo mismo para otras operaciones
prod(faltante_NA,na.rm = TRUE)

#media de los elementos de un vector
mean(mis_personas)

#el maximo de un vector
max(mis_personas)

#el minimo de un vector
min(mis_personas)

##########################################################

#con strings ordena alfabeticamente
cadena<-c("hola","gua","abc","chale")
max(cadena)
min(cadena)

#el minimo es el primero el ordenamiento y el max el ultimo

#el modulo
10 %% 9

#divicion entera
10 %/% 3 


#ordenaciones de vectores
sort(c(33,21,54,3,-7)) #ascendente

sort(c(33,21,54,3,-7),decreasing = TRUE) #descendente

mis_datos <- c("L","L","H","A","A","L","M","A","B","C","L")

sort(mis_datos) #ordena alfabeticamente

sort(faltante_NA) #no es afectado por el NA

#indexacion con operadores logicos
mis_personas[mis_personas>63]
#imprime los valores que cumplen la condicion

#para imprimir los indices se usa which
which(mis_personas > 63)

#para saber cuantos son, se puede usar
length(which(mis_personas > 63))

X <- c(TRUE,FALSE,0,6)
Y <- c(FALSE,TRUE,FALSE,TRUE)

!X #negacion
X & Y  #conjuncion
X | Y #disyuncion

X && Y #compara el primer elemento de X y Y
X || Y #compara el primer elemento de X y Y

#######################################################
#nombrar elementos de un vector
names(mis_personas)<- c("Luis","Raul","Maria","Ramon")
mis_personas  

#ahora podemos llamar por el nombre
mis_personas["Maria"]

sort(mis_personas)

#########################################################
#Modificacion de elementos de un vector

mis_personas["Luis"]<-65
mis_personas

mis_personas[1]<-71.4
mis_personas

mis_personas[2:4]<-c(63,64,90.9)
mis_personas

#add a new element to the vector
mis_personas[5]<-90
mis_personas

#puting a name to the new element
names(mis_personas)[5]<-c("Ana")
mis_personas

#queremos barjar a cada persona 
# 20%, 20%, 10%, 5%, 5% respectivamente
(1-c(0.2,0.2,0.1,0.05,0.05))*mis_personas

#bajar el 30% y el 22% de la segunda y la quinta
(1-c(0.3,0.22))*mis_personas[c(2,5)]

#pesos con maypr 68 y guardarlos en otro
mis_personas_pesadas<-mis_personas[mis_personas
                                   >68]
mis_personas_pesadas
