# 3-5
# 1
qnorm(0.5 + 0.6528/2)

# 2
# pnorm(1.82) - pnorm(z) = 0.59
qnorm(pnorm(1.82)-0.59)

# 3
qnorm(0.2)

# 4
qnorm(1-0.125)

# 5
qnorm(0.5+0.668/2)

# 6
qnorm(pnorm(2)-0.888)

# 3-19
# 1
m = 0.05
sd = 1.5
x = 0
1-pnorm((x-m)/sd)
1-pnorm(x,mean=m,sd=sd)

# 2
x = 2.8
2*(1-pnorm((x-m)/sd))
2*(1-pnorm(x,mean=m,sd=sd))

# 3
qnorm(0.8)*1.5+0.05
qnorm(0.8,mean=0.05,sd=1.5)

# 4-17
# 1
m = 0.8*2
x = 0
p = dpois(x,m)
p
#2
# 이항분포 이용 
n = 100
x = 15
pbinom(x,n,p)

# 정규분포 근사 
M = n*p
sd = sqrt(n*p*(1-p)) 
pnorm(x,mean=M,sd=sd)

# 6-24
# 1
data <- c(2.97, 4.35, 2.67, 3.27, 1.75, 4.27, 4.19, 2.67, 1.04, 1.93)
hist(data, prob=T)
qqnorm(y=data)
qqline(y=data, col="blue", lwd=2)

# 2
data <- c(-0.19, -1.15, -1.63, -0.35, 0.96, 0.43, -1.05, -0.77, -0.24, 1.72)
hist(data, prob=T)
qqnorm(y=data)
qqline(y=data, col="blue", lwd=2)

# 변형 
data2<-sqrt(sqrt(abs(data)))
hist(data2, prob=T)
qqnorm(y=data2)
qqline(y=data2, col="red", lwd=2)


# CHAP 9
# 3-7
# 1
m = 455
n = 9
s = 3.459

q <- qnorm(0.02)
q
a = 450-q*(s/3)
a
pnorm(450,a,s/3)

#2
pnorm(450,452.368,s)


# 3-11
# 2
m = 20
s = 5
n = 100
# P(X >= 20.75)
1-pnorm(20.75,mean=m,sd=s/sqrt(n))

