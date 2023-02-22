getwd()
setwd( "C:/Users/marti/Documents/R/Aprendiendo\ R")

mi_funcion1 <- function(x){
  suma_total <- sum(x)
  maximo <- max(x)
  minimo <- min(x)
  return(suma_total-maximo-minimo)
}

mi_vec1 <- c(1,5,27,5,187,34)

mi_funcion1(mi_vec1)

mi_funcion1_extendida <- function(x){
  suma_total <- sum(x)
  maximo <- max(x)
  minimo <- min(x)
  return(c(s_M_m= suma_total-maximo-minimo,ST =suma_total))
}

mi_funcion1_extendida(mi_vec1)


mi_funcion2 <- function(X){
  promedios <- colMeans(X)
  nvo_data <- rbind(X,promedios)
  row.names(nvo_data) = c(row.names(X),"PROMEDIO")
  colnames(nvo_data) = colnames(X)
  return(nvo_data)
}

mi_data <- data.frame(val1 = c(1,4,2,5),
                      val2 = c(2,1,1,6),
                      val3 = c(12,4,28,2))

mi_funcion2(mi_data)

############ Para pegar vectores de caracteres
paste(c("1","2"),collapse = " ")
paste(c("Hola","a","todos"),collapse=" ")
paste(c(1,3,4,4),collapse = " ")

paste(c(1,2,3),c("hola","a","todos"),c(TRUE,TRUE,FALSE),
      sep="")

paste0(c(1,2,3),c("hola","a","todos"),c(TRUE,TRUE,FALSE))

##########################

substr(c("hola a todos","Ya me voy"),3,8) #para sustraer en strings

mi_funcion3 <- function(palabras){
  primera <- substr(palabras,1,1)
  palabra <- paste(primera, collapse = "")
  return(palabra)
}

mi_funcion3(c("Hola","a", "todos"))


mi_funcion4 <- function(a,b,c){
  discriminante <- b^2-4*a*c+0i
  resp1 <- (-b + sqrt(discriminante))/(2*a)
  resp2 <- (-b - sqrt(discriminante))/(2*a)
  return(c(resp1,resp2))
}

mi_funcion4(1,3,4)


mi_funcion5 <- function(palabras){
  cantidades = nchar(palabras)
  pares = cantidades %% 2 == 0
  palabras_pares = palabras[pares]
  lista = list(palabras_pares,
               cantidades[pares],
               length(palabras_pares))
  names(lista) = c("Palabras","Cantidades","Total")
  return(lista)
}

mi_funcion5(c("Hola a todos", "ab"))

mi_funcion5(c("123","hola","1","ab","cd"))

## funcion que dice si un raiz cuadrada es entera

mi_funcion6 <- function(x){
  raiz = sqrt(x)
  salida = as.logical(as.integer(raiz)-raiz)
  return(!salida)
}

#palabras que empiezan por vocal y palabras que no empiezan con vocal

mi_funcion7 <- function(mis_palabras){
  vocal_si <- mis_palabras[substr(mis_palabras,1,1) %in% c("A","E","I","O","U","a","e","i","o","u")]
  vocal_no <- mis_palabras[! substr(mis_palabras,1,1) %in% c("A","E","I","O","U","a","e","i","o","u")]
  return(list(con_vocal=vocal_si, sin_vocal = vocal_no))
}


mi_funcion7(c("esta","ha","sido","una","exelente","clase","2022"))
