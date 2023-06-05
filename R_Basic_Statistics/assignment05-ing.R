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
