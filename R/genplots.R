library(ggplot2)



file1 <- "/home/saimir/ownCloud/PhD/Thesis/src/tables/speech-act-guideline.csv"

d <- read.csv(file1)

p <- ggplot(data=d, aes(x=SpeechAct, y=Count)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Count), vjust=1.6, color="white", size=3.5)+
  theme_minimal() + 
  theme_bw() +
  scale_shape_discrete( drop=FALSE) + 
  #scale_color_manual(values = speechAct) +
  theme(axis.text.x = element_text(angle = 90, vjust = .5, hjust=1, 
                                   # face = 'bold.italic', 
                                   family = 'sans',
                                   colour = 'black',
                                   size = 12), 
        # panel.grid.major = element_blank(),
        # panel.grid.minor = element_blank(),
        legend.text=element_text(size=8),
        legend.title=element_text(size=8),
        legend.direction = "horizontal",
        legend.box = "vertical",
        legend.box.just = "right",
        # legend.box.background = element_rect(colour = "black"),
        legend.position = c(.6,.77),
        legend.background = element_rect(fill = NA, colour = "black"),
        legend.key = element_rect(fill = NA)) 

pdf(file = '/home/saimir/ownCloud/PhD/Thesis/src/figures/speechActCount.pdf', width = 8, height = 5)

p

dev.off()