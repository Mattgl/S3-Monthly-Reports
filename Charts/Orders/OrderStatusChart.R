OrderStatusChart <- function(orders) {
  g <- ggplot(orders, aes(orders$Status))
  g <- g+geom_bar(width = .5, fill='#4281A6')
  g <- g+theme(panel.background = element_rect(fill = '#FFFFFF'),
               panel.grid.major = element_line(colour = "#60FBDC"),
               panel.grid.minor = element_line(colour = "#60FBDC"))
  g <- g+labs(x='', y='')
  g <- g+theme(axis.text.x=element_text(angle=340, size=10, vjust=0.5))
  g <- g+ggtitle('Orders by Status')
  return(g)
}