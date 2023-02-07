
library(ggplot2)
library(data.table)
# d = read.csv("carburants.csv", sep = ";")
d = fread("carburants.csv", sep = ";")
pville = d[,list(mean_price = mean(prix_valeur,na.rm = TRUE)), by = list(ville = toupper(ville))]
pauto = d[,list(mean_price = mean(prix_valeur,na.rm = TRUE)), by = list(ville = toupper(ville),horaires_automate_24_24)]
ggplot(pauto, mapping = aes(x = horaires_automate_24_24, y = mean_price)) + geom_violin()


