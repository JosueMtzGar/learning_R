setwd( "C:/Users/marti/Documents/R/Aprendiendo\ R")

tmod_vic <- read.csv("tmod_vic.csv")
descriptor_ent <- read.csv("descriptor_ent.csv")
descriptor_mes <- read.csv("descriptor_mes.csv")
descriptor_del <- read.csv("descriptor_del.csv")

tmod_vic$BPCOD[1:10]

###################se add la columna con los estados especificos
tmod_vic <- merge(tmod_vic,descriptor_ent,
                  by.x="BP1_2C", by.y="codigo_entidad",
                  all.x = TRUE)
########### se añade la columna de delitos
names(descriptor_del)

tmod_vic <- merge(tmod_vic,descriptor_del,
                  by.x="BPCOD", by.y="codigo_del",
                  all.x = TRUE)
names(tmod_vic)
################################

extraer <- function(x){
  return(tmod_vic[tmod_vic$BP1_2C==x, ])
}

tabla_entidad <- lapply(c(1:39,99),extraer)


