# draw football pitch with default r graph

require("plotrix")

draw_pitch <- function(xmax, ymax) {
  
sideline <- c(0,xmax)
goalline <- c(0,ymax)
  
#create empty plot
plot (goalline~ sideline, xaxt="n", yaxt = "n", xlab = "", ylab = "", type="n", bty = "n", asp = 0)

rect(0, 0, 120, 80) #pitch

rect(0, 18, 18, 62) #box left
rect(0, 50, 6, 30) #six yard box left
rect(-1, 44, 0, 36) #goal left

rect(102, 18, 120, 62) #box right
rect(114, 50, 120, 30) #six yard box right
rect(120, 44, 121, 36) #goal right

segments(x0 = 60, y0 = 0, x1 = 60, y1 = 80) #middle line
draw.circle(60,40,10,border="black") #middle circle

#half circles left and right
left.half.circle <- function(x,y,r,nsteps=1000,...){
  rs <- seq(0,pi,len=nsteps) 
  xc <- x+r*sin(rs) 
  yc <- y+r*cos(rs) 
  polygon(xc,yc,...)  
  } 
left.half.circle (18,40,5)

right.half.circle <- function(x,y,r,nsteps=1000,...){
  rs <- seq(0,pi,len=nsteps) 
  xc <- x-r*sin(rs) 
  yc <- y-r*cos(rs) 
  polygon(xc,yc,...)  
} 
right.half.circle (102,40,5)

points(12,40,col="black", pch = 16)
points(108,40,col="black", pch = 16)
points(60,40,col="black", pch = 1)
}

draw_pitch(120,80)
