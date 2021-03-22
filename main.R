nb_vac_ultra_01_03 <- sum(head( vacsi_tot_reg_2021_03_01_20h15$n_tot_dose1, 4))
nb_vac_metro_01_03 <- sum(tail( vacsi_tot_reg_2021_03_01_20h15$n_tot_dose1, 15))

nb_vac_ultra_08_03 <- sum(head( vacsi_tot_reg_2021_03_08_17h25$n_tot_dose1, 4))
nb_vac_metro_08_03 <- sum(tail( vacsi_tot_reg_2021_03_08_17h25$n_tot_dose1, 15))

nb_vac_ultra_15_03 <- sum(head( vacsi_tot_reg_2021_03_15_17h25$n_tot_dose1, 4))
nb_vac_metro_15_03 <- sum(tail( vacsi_tot_reg_2021_03_15_17h25$n_tot_dose1, 15))

nb_vac_ultra_18_03 <- sum(head( vacsi_tot_reg_2021_03_18_17h25$n_tot_dose1, 4))
nb_vac_metro_18_03 <- sum(tail( vacsi_tot_reg_2021_03_18_17h25$n_tot_dose1, 15))

pop_ultra <- sum(head(vacsi_tot_reg_2021_03_18_17h25$pop, 4))
pop_metro <- sum(tail(vacsi_tot_reg_2021_03_18_17h25$pop, 15))

couv_tot_dose1_ultra <- nb_vac_ultra_18_03/pop_ultra * 100
couv_tot_dose1_metro <- nb_vac_metro_18_03/pop_metro * 100

dates_nb_vac_ultra_metro <- data.frame("Date" = 
                                         c(as.Date("01-03-2021", format="%d-%m-%Y"),
                                           as.Date("08-03-2021", format="%d-%m-%Y"),
                                           as.Date("15-03-2021", format="%d-%m-%Y"),
                                           as.Date("18-03-2021", format="%d-%m-%Y")),
                                       "Ultramarine" = 
                                         c(nb_vac_ultram_01_03,
                                           nb_vac_ultram_08_03,
                                           nb_vac_ultram_15_03,
                                           nb_vac_ultram_18_03),
                                       "Metropolitaine" = 
                                         c(nb_vac_metro_01_03,
                                           nb_vac_metro_08_03,
                                           nb_vac_metro_15_03,
                                           nb_vac_metro_18_03))

# % de Vaccinees aux regions Metropolitaines et Ultramarines
nb_vaccine_ultra_metro <- data.frame("region"=c("Ultramarine", "Metropolitaine"),
                                       "couv_tot_dose1"=c(couv_tot__dose1_ultra,
                                                          couv_tot__dose1_metro))

# Graphe du pourcentage des personnes vaccinées aux regions Metropolitaines et Ultramarines
ggplot(aes(x=region, y=couv_tot_dose1), data = nb_vaccine_ultra_metro) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées") +
  ylim(0,10)

# Graphe du pourcentage des personnes vaccinées dans tous les regions (01-03-21)
ggplot(aes(x=as.factor(reg), y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_01_20h15) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (01-03-21)") +
  ylim(0,12)

# Graphe du pourcentage des personnes vaccinées dans tous les regions (08-03-21)
ggplot(aes(x=reg, y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_08_17h25) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (08-03-21)") +
  ylim(0,12)

# Graphe du pourcentage des personnes vaccinées dans tous les regions (15-03-21)
ggplot(aes(x=reg, y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_15_17h25) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (15-03-21)") +
  ylim(0,12)

# Graphe du pourcentage des personnes vaccinées dans tous les regions (18-03-21)
ggplot(aes(x=reg, y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_18_17h25) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (18-03-21)") +
  ylim(0,12)

