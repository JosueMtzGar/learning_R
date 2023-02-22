#Los strings tiene prioridad sobre valores numericos
poblacion<-c(1,3,500,"34")
poblacion

#para eliminar un objeto del environment se usa la funcion rm()
rm(poblacion)

poblacion #ya no existe en este punto

poblacion<- c(10000,20000,30000,40000)

#encerrar la var en () muestra el valor de la var al mismo tiempo 
#que es asignada
(variable<-2+5)

#llamar varios elementos de un vector con otro vector
mis_personas[c(1,3)]

mis_indices<-c(1,3)

#tambien
mis_personas[mis_indices]

#imprime un rango incluyendo los limites puestos
2:4
4:17
rango<-1:4

#imprimir elementos del vector en un rango
mis_personas[1:4]
mis_personas[rango]

#generar del 100 al 200 sin el 150
c(100:149, 151:200) #una forma
(100:200)[-51] #otra forma

#ejercicio de imprimir los numeros impares del 1 al 100
impares<-2*(1:50)-1

#esto se puede usar para imprimir las posiciones impares de un vector
(100:200)[impares]
