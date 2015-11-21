getwd()
library()

a=c(3,7,8)
mean(a)
#not sure what the difference between these two is
mean(x=a)
x=mean(a)
b=c(4,5,8,11)
sum(b)
s=sum(b)
rnorm(10)
ran=rnorm(10)
plot(ran)
dim(ran)
ls(ran)
ran
summary(ran)
?data.frame()
data.frame(ran)
randf = data.frame(ran)
dim(ran)
newran=rnorm(n=50,mean=25,sd=5)
summary(newran)
list(newran)
rm(randf)
dim(newran)
?dim
plot(newran)
plot(newran, type = "b")

#to remove err'thing
?rm
rm(list = ls())

?sqrt

sqrt(x)
sqrt(s)


source("randomCent.R")
  
mat=matrix(data=c(1:50), nrow=10)
mat
?seq
p = seq(31,60)
p
q = matrix(data=p, nrow=6, ncol=5)
q
q+mat
mat[1,1]
dim(mat)
mat[10,5]
mat[3,4]
mat[2,]
mat[,1]
mean(q)
mean(mat)


#finally data frames are explained: data frames are matrices with names above the columns
rm(a)
rm(b)
t=data.frame(a=c(1,2,3),b=c(3,4,5),c=c(5,6,7))
t
t.a
t$a
t$a + t$b

rm(t)
source("randVectors.R")
t=data.frame(x1,x2,x3)
t
plot(t)
plot(t$x1,t$x2)
sd(t)
sd(t$x1)
sd(t)
dim(t)

#lists
#The main
# advantage of lists is that the \columns" (they're
# not really ordered in columns any more, but are
# more a collection of vectors) don't have to be of
# the same length, unlike matrices and data frames.

L= list(one=1, two=c(1,2), five=seq(0,1,length=5))
L
L$one
L$two
attach(L)
$one
one
two
five
?attach
detach(L)
one

names(L)
L

#Graphics

plot(rnorm(100), type="l", col="gold")
hist(rnorm(100))
source("randVectors.R")
plot(t$x1, type = "l", ylim = range(t), lwd=3, col=rgb(1,0,0,0.3))
lines(t$x2, type = "s", lwd=2, col=rgb(0.3,0.4,0.3,0.9))
points(t$x3, pch=20, cex=4, col=rgb(0,0,1,0.3))

source("randVectors.R")
source('~/R/VeryShortIntro/randVectors.R')
?closure

?rgb
?par

#reading and writing data files

d = data.frame(a=c(3,4,5), b=c(12,43,54))
d
write.table(d, file="tst0.txt", row.names = FALSE)
d2= read.table(file = "tst0.txt", header=TRUE)
d2
?seq
tst1 = data.frame(a=seq(1,32, length.out = 6),g=seq(2,64, length.out = 6),x=seq(3,96, length.out = 6))
tst1
write.table(tst1, file="tst1.txt", row.names = FALSE)
tstr = read.table(file = "tst1.txt", header=TRUE)
tstr
#bon

#Not available data
#compute the mean of the square root of a vector of 100 random numbers
rand100= rnorm(100)
mean(sqrt(rand100))
#what happens is "Warning message: In sqrt(rand100): NaNs produced
#to get around missing data you can add the argument na.rm=TRUE


#Classes
#not much useful here, but the next section...

#Programming tools

w=3
if(w<5)
{
  d=2
}else{
  d=10
}
d
#To get a subset of points in a vector for which
# a certain condition holds, you can use a shorter
# method:
a=c(1,2,3,4)
b=c(5,6,7,8)
f= a[b==5 | b==8]
f
# In line 3 you say that f is composed of those
# elements of vector a for which b equals 5 or b
# equals 8.

#For-loop

h= seq(from=1, to=10)
s=c()
for(i in 1:10)
{
  s[i] = h[i]*20
}
s

x=c(1:100)
y=c()
for (n in 1:100)
{y[n] = x[n]
if (y[n]<5
    | y[n]>90)
  {y[n]=y[n]*10
  }else{
  y[n]=y[n]*0.1}
}
y
