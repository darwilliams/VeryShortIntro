
randVectors = function ((x1=rnorm(1:100),
                        x2=rnorm(1:100),
                        x3=rnorm(1:100)),
                        expression (plot (t$x1, type = "l", ylim = range(t), lwd=3, col=rgb(1,0,0,0.3))), 
                        lines(t$x2, type = "s", lwd=2, col=rgb(0.3,0.4,0.3,0.9)),
                        points(t$x3, pch=20, cex=4, col=rgb(0,0,1,0.3)))


  