# 2.5
n = 35
x_bar = 30.2
s = 3.8
alpha = 0.05

z_alpha_2 <- qnorm(1-alpha/2)
z_alpha_2 # 1.96
left = x_bar-(z_alpha*s/sqrt(n))
right = x_bar+(z_alpha*s/sqrt(n))
c(left, right)


# 2.15
alpha_2 = pnorm(-1.44)
2*alpha_2 # alpha
1- alpha_2*2 # 신뢰도 = 1 - alpha
qnorm(1-alpha_2)


# 2.17
sigma <- 9
alpha = 0.1
err <- 1.2 # 오차 
z_alpha_2 <- qnorm(1-alpha/2)
n = (z_alpha_2 * (sigma/err))^2
n  

qnorm(1-0.025)

# 3.9
# (1) 기각역 
alpha = 0.05
qnorm(1-alpha)

# (2) 검정 통계량의 관측값 
n = 67
x_bar = 7.8
s = 8.62
M = 10
z = (x_bar - M) / (s / sqrt(n))
z
# (3) p 값 
pnorm(z)


# 3.17
n = 43
s = 757
x_bar = 3246
m = 3000

z = (x_bar - m) / (s / sqrt(n))
z

2 * pnorm(-z)

# 4.3
n = 78
p = 49/n
p
s = sqrt(p*(1-p)/n)
s

alpha = 0.05
z_alpha_2 = qnorm(1-alpha/2)
left = p - (z_alpha_2*s)
right = p + (z_alpha_2*s)
c(left, right)


# 4.11
alpha = 0.02 # 98% 확신 
err = 0.04 # 오차 
p = 0.25

z_alpha_2 = qnorm(1-alpha/2)
n = (z_alpha_2/err)^2 * p*(1-p)
n

# 4.17
qnorm(0.95)

n = 49
p = 0.3
p_h = 19/n
z = (p_h - p) / sqrt(p*(1-p)/n)
z
1-pnorm(z)

