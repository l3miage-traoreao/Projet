
# Graphe du pourcentage des personnes vaccinées aux regions Metropolitaines et Ultramarines
ggplot(aes(x=region, y=couv_tot_dose1), data = nbVaccineUltramarineEtMetropolitaine) +
  geom_bar(stat = "identity") +
  labs(x="Region", y="% de Vaccinées")

