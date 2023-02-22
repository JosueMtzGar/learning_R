2 + 5

6+7

# se define un vector
mi_vector = c("a", "hola", "tengo hambre", "2", 5+7)

# con lenght() se calcula la longitud del vector
length(mi_vector)

# ver el elmento 2 del vector. Los indices empiezan desde 1
mi_vector[2]

mis_personas = c(71.4, 65.1, 63, 94.5)

# impreme todos los elementos del vector
mis_personas

mis_personas[3]

# asignacion de valores a variables
hola = 2+3
2*hola

# otra forma de asignar valores a variables
hola <- 2 * 9
2*hola

#multiplica cada elemento del vector por 2.2
2.2* mis_personas

#operaciones numericas con vectores
c(5,2,0)/2
c(5,2,0)^2
exp(c(5,2,0))
log(c(5,2,0))
sqrt(c(5,2,0))

# operaciones numericas con elementos del vector
2.2*mis_personas[3]

#suma de vectores de la misma longitud
mis_personas_corregido <- mis_personas + c(0.4,0.2,0.4,0.3)
mis_personas_corregido

#suma de vectores de longitud diferente
suma_vector = c(1,2,3) + c(10,20)
suma_vector

suma_vector2 = c(10,20) + c(1,2,3)
suma_vector2

################################################################
# Comparaciones (estan vectorizadas) con operadores logicos

mis_personas > 64
c(1,2,5) == c(2,2,5)
c(1,2,5) != c(2,2,5)

# logaritmo log("valor o vector", base= "valor")
log(100, base=10)

#sin base, es base neperiana (logaritmo natural)
log(100)

# Raiz cuadrada de numeros complejos
sqrt(-4+0i)

# con funciones trig. los angulos estan en radianes
sin(45)
sin(3.1416/4)

#se puede usar sinpi(x) que hace sin(pi*x)
sinpi(1/4)
