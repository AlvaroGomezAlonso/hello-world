toy <- read.csv("C:/Users/joyas/Downloads/toy.csv")
View(toy)
glimpse(toy)
summary(toy)
toy_summary <- toy %>%
  +     group_by(Sex) %>%
  +     summarise
    +         mean_Peso = mean(Weight_Kg, na.rm = TRUE)
    +         mean_Altura = mean(Height_cm, na.rm = TRUE)
    +         mean_IMC = mean(IMC, na.rm = TRUE)
    +         mean_IAS = mean(IAS, na.rm = TRUE)
    +         mean_CCintura = mean(Ccintura, na.rm = TRUE)
print(toy_summary)
femeninos <- toy %>%
filter(Sex == "Female")
num_femeninos <- nrow(femeninos)
print(num_femeninos)
num_sobrepeso <- femeninos %>%
      +     filter(IMC_clas == "Overweight") %>%
      +     nrow()
print(num_sobrepeso)
ggplot(toy, aes(x = Weight_Kg, y = IMC)) +
      +     geom_point() +
      +     labs(title = "Relación entre IMC y Peso", x = "Peso (Kg)", y = "IMC")
sobrepeso_obesidad <- toy %>%
      +     filter(IMC_clas %in% c("Overweight", "Obesity"))
ggplot(sobrepeso_obesidad, aes(x = Weight_Kg, y = IMC)) +
      +     geom_point() +
      +     labs(title = "Relación entre IMC y Peso (Overweight y Obesity)", x = "Peso (Kg)", y = "IMC")
install.packages("ape")
    