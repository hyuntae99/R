# 4번
# 평균이 M이고 표준편차가 sigma = 8인 정규분포를 따르는 모집단
# 크기가 25인 표본의 표본평균이 42.7일 때, 모평균에 대한 95% 신뢰구간?
n <- 25
sigma <- 8
alpha <- 0.05
xbar <- 42.7

z_alpha_2 <- qnorm(1-alpha/2)
se <- sigma/sqrt(n)
err_mgn <- z_alpha_2 * se
c(xbar,err_mgn)
c(xbar - err_mgn, xbar + err_mgn)

# 5번
# n = 36, xbar = 342, s = 20, 95%, 99% 신뢰구간 

n <- 36
s <- 20
xbar <- 342
alpha1 = 0.05
alpha2 = 0.01

z_alpha_1 <- qnorm(1-alpha1/2)
se <- s/sqrt(n)
err_mgn <- z_alpha_1 * se
c(xbar,err_mgn)
c(xbar - err_mgn, xbar + err_mgn)

z_alpha_2 <- qnorm(1-alpha2/2)
se <- s/sqrt(n)
err_mgn <- z_alpha_2 * se
c(xbar,err_mgn)
c(xbar - err_mgn, xbar + err_mgn)

# 6번
s <- 4
alpha = 0.05
err <- 0.75
z_alpha <- qnorm(1-alpha)
n = (z_alpha * (s/err))^2
n  
  
  
  