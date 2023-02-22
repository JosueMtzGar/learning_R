##### Control de flujo

setwd( "C:/Users/marti/Documents/R/Aprendiendo\ R")


mi_animal = "gato"

if(mi_animal == "gato"){
  print("Este animal hace 'miau'")
  mi_animal_2 = "Mi gato"
}

print("Hola a todos")

mi_guerrero = "gato"

if(mi_guerrero == "Yamcha" | mi_guerrero == "Krilin"){
  print("Seguro se va a morir")
} else{
  print("Tenemos oportunidad de que nos salve")
}

print("As√≠ pasa en DBZ")

if(mi_guerrero == "Yamcha"){
  print("Seguro se va a morir")
} else if(mi_guerrero == "Krilin"){
  print("Seguro lo van a explotar")
} else if(mi_guerrero == "Vegeta"){
  print("Siempre llora cuando va perdiendo")
} else{
  print("No s√© qu√© decir de este guerrero")
}

dato_texto = "2002"
dato = as.numeric(dato_texto)
if(is.na(dato)==FALSE & dato>0){
  print("El n√∫mero es positivo")
} else if(is.na(dato)==FALSE & dato<0){
  print("El n√∫mero es negativo")
} else if(is.na(dato)==FALSE & dato ==0){
  print("El n√∫mero es cero")
} else{
  print("No es un n√∫mero")
}

mi_vector <- c(1,5,27,5,187,34,45,848,24,7)
mean(mi_vector)

ifelse(mi_vector < mean(mi_vector),
       "Es menor que la media",
       "No es menor")

mi_data <- data.frame(nombre=c("Luis","Rosita","Marco"),
                      sexo = c("masculino","femenino","masculino"))

mi_data$sexo_cod <- ifelse(mi_data$sexo == "masculino",
                           1,
                           0)

ifelse(mi_vector < mean(mi_vector),"Es menor que la media",
       ifelse(mi_vector<500,"Es menor que 500",
              "No es menor que media ni 500"))


set.seed(2021)
mi_vector2<-sample(1:100,10)
mi_vector2
n=1

while(mi_vector2[n] %% 5 != 0){
  mi_vector2[n] = 2*mi_vector2[n]
  n = n+1
}

mi_vector2


###################### otro ejemplo de while

mi_frase = "Hola a todos. øCÛmo est·n?"
mi_simbolo = "."
n=1

while(n<=nchar(mi_frase) & substr(mi_frase,n,n)!=mi_simbolo){
  print(substr(mi_frase,n,n))
  n=n+1
}

############# otro ejemplo

mi_frase = "Estamos a 8 de abril"
mi_simbolo = "9"
n=1
while(n<=nchar(mi_frase) & substr(mi_frase,n,n)!=mi_simbolo){
  print(substr(mi_frase,n,n))
  n=n+1
}

if(n-1==nchar(mi_frase)){
  print("No se encontrÛ el sÌmbolo")
}

###################################################################
############### ciclo "for"

mi_num = 5
mi_fac = 1
for(i in c(1,2,3,4,5)){
  mi_fac = mi_fac*i
}

mi_fac # en R est· la funciÛn factorial

##### otro ejemplo de for

es_primo <- function(n){
  divisores = c()
  for(x in 1:n){
    if(n %% x == 0){
      divisores = c(divisores, x)
    }
  }
  cantidad_divisores = length(divisores)
  if(cantidad_divisores == 2){
    primo = TRUE
  } else{
    primo = FALSE
  }
  return(list(Divisores = divisores,primalidad = primo))
}

es_primo(11)

########### otro ejemplo

set.seed(2022)
mi_data <- data.frame(Absoluto_1 = sample(40:80,8,replace = FALSE),
                      Absoluto_2 = sample(40:80,8,replace = FALSE),
                      Absoluto_3 = sample(40:80,8,replace = FALSE),
                      Absoluto_4 = sample(40:80,8,replace = FALSE))
