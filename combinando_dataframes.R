### Combinacion de Dataframes

data(mtcars)

# Agregramos la columna brand a mtcars
mtcars$brand <- c("Mazda","Mazda","Datsun","Hornet","Hornet","Valiant","Duster","Merc",
                  "Merc","Merc","Merc","Merc","Merc","Merc","Cadillac","Lincoln",
                  "Chrysler","Fiat","Honda","Toyota","Toyota","Dodge","AMC","Camaro",
                  "Pontiac","Fiat","Porsche","Lotus","Ford","Ferrari","Maserati","Volvo")

mtcars$model <- row.names(mtcars)

# creamos el dataframe de marcas
brands_origin <- data.frame(
  car_brand = c("Mazda","Toyota","Fiat","Volvo","Skoda"),
  country = c("Japan","Japan","Italy","Sweden","Checa"),
  type = c("A","B","C","D","E")
)
#join interno con la funcion merge()
interno <- merge(mtcars, brands_origin, by.x = "brand", by.y = "car_brand")

#join izquierdo (left join)
izquierda <- merge(mtcars,brands_origin, 
                   by.x = "brand", by.y = "car_brand", 
                   all.x = TRUE)

#join derecho
derecho <-merge(mtcars,brands_origin, 
                              by.x = "brand", by.y = "car_brand", 
                              all.y = TRUE)

#join full
total <- merge(mtcars,brands_origin, 
                            by.x = "brand", by.y = "car_brand", 
                            all = TRUE)

######################## Libreria: tidyverse
# tiene las funciones left_join, inner_join, right_join, full_join

