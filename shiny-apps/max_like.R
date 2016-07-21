par(family = 'serif', font = 1, mar = c(4.5,6,1,1))

library(scales)

xlim = c(0,130)

polygon(curve(dweibull(x, 2.5,50), 
              xlim = xlim, 
              ylab = '', xlab = '', 
              col = alpha('blue', 1),
              yaxt = 'n', xaxt = 'n', 
              ylim = c(0,.03), 
              yaxs = 'i', xaxs = 'i',
              lwd = 2), 
        col = alpha('blue', 0.25), 
        border = NA)

  polygon(curve(dweibull(x, 2.5,40),
                col = alpha('darkgreen', 1),
                xlim = xlim,
                add = TRUE, 
                lwd = 2), 
          col = alpha('green', 0.25), 
          border = NA)
  
  polygon(curve(dweibull(x, 2.0,50), 
                col = alpha('red', 1),
                xlim = xlim,
                add = TRUE, 
                lwd = 2), 
          col = alpha('pink', 0.25), 
          border = NA)
  box(lwd = 1.5)
  mtext(side = 3, 'f(t)', line = -2, at = -1, adj = 1, font = 2, cex = 1.5)
  
text(x = rep(c(55, 69), each = 3), 
     y = rep(c(0.025,0.0225, 0.02), 2), 
     rep(c('Blue', 'Green', 'Red', rep('=',3)), 2), 
     col = rep(c('blue', 'darkgreen', 'red'), 2),
     adj = 0, 
     font = 2,
     cex = 1.5)

text(x = c(100,55), 
     y = c(.005,0.028), 
     c(paste('total samples =', 5, sep = " "), 
       expression(bold(prod(f(t[i]~symbol('|')~theta),i==1,n)==sum(log~bgroup('[',f(t[i]~symbol('|')~theta),']'), i==1,n)%->%Log-likelihood))), 
     font = 2,
     adj = 0,
     cex = 2)
