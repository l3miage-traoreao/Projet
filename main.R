
# Graphe du pourcentage des personnes vaccinées aux regions Metropolitaines et Ultramarines
ggplot(aes(x=region, y=couv_tot_dose1), data = nbVaccineUltramarineEtMetropolitaine) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées")

# Graphe du pourcentage des personnes vaccinées dans tous les regions (01-03-21)
ggplot(aes(x=reg, y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_01_20h15) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (01-03-21)")

# Graphe du pourcentage des personnes vaccinées dans tous les regions (08-03-21)
ggplot(aes(x=reg, y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_08_17h25) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (08-03-21)")

# Graphe du pourcentage des personnes vaccinées dans tous les regions (15-03-21)
ggplot(aes(x=reg, y=couv_tot_dose1), data = vacsi_tot_reg_2021_03_15_17h25) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées", title = "Pourcentage des Personnes Vaccinées dans tous les Regions (15-03-21)")
