pokeman=read.csv("E:/Data Sets/pokemon.csv")
View(pokeman)
table(pokeman$is_legendary)
table(pokeman$abilities)
table(pokeman$type1)
max(pokeman$hp)
min(pokeman$hp)
min(pokeman$speed)
max(pokeman$speed)
#checking null values
is.na(pokeman)
sum(is.na(pokeman$abilities))
sum(is.na(pokeman))
sum(is.na(pokeman$weight_kg))
colnames(pokeman)=="type1"
colnames(pokeman)[colnames(pokeman)=="type1"]="primary_type"
View(pokeman)
colnames(pokeman)[colnames(pokeman)=="type2"]="secondary_type"
View(pokeman)
colnames(pokeman)[colnames(pokeman)=="name"]="pokemon_name"
View(pokeman)
library(dplyr)
pokeman %>% filter(pokeman$primary_type=="grass")->grass_pokeman
View(grass_pokeman)

#grass_pokeman speed
min(grass_pokeman$speed)
max(grass_pokeman$speed)
mean(grass_pokeman$speed)
mean(grass_pokeman$sp_attack)
mean(grass_pokeman$sp_defense)
library(ggplot2)
ggplot(data=grass_pokeman, aes(x=hp)) + geom_histogram(fill="palegreen4")
ggplot(data=pokeman,aes(x=height_m)) +geom_histogram()
ggplot(data=grass_pokeman,aes(x=weight_kg)) + geom_histogram(fill="coral")
ggplot(data=grass_pokeman,aes(x=is_legendary))+geom_bar(fill="blue")
#fire pokeman
pokeman %>% filter(primary_type=="fire")->fire_pokeman
View(fire_pokeman)
min(fire_pokeman$speed)
max(fire_pokeman$speed)
mean(fire_pokeman$sp_attack)
mean(fire_pokeman$sp_defense
ggplot(data=fire_pokeman,aes(x=generation, fill=as.factor(generation))) +geom_bar()
ggplot(data=fire_pokeman,aes(x=secondary_type, fill=secondary_type))+geom_bar()
ggplot(data=fire_pokeman,aes(x=sp_attack, y=sp_defense)) +geom_point()
ggplot(data=fire_pokeman, aes(x=height_m,y=weight_kg))+ geom_point()    
