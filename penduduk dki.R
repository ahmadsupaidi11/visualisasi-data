library(ggplot2)
penduduk.dki <- read.csv("https://academy.dqlab.id/dataset/dkikepadatankelurahan2013.csv", sep=",")

plot.dki <- ggplot(data = penduduk.dki, aes(x = LUAS.WILAYAH..KM2.,  y=KEPADATAN..JIWA.KM2., color=NAMA.KABUPATEN.KOTA))
plot.dki + geom_point() +
  theme(plot.title = element_text(hjust = 0.5)) +
  labs(title = "Luas Wilayah vs Kepadatan Penduduk DKI Jakarta", x= "Luas wilayah (km2)", y="Kepadatan Jiwa per km2", color = "Nama Kabupaten/Kota")

#histogram
plot.dki <- ggplot(data=penduduk.dki, aes(x = KEPADATAN..JIWA.KM2.))

plot.dki + geom_histogram(binwidth = 10000)

