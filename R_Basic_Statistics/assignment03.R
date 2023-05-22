# 3-17
p <- 0.2   # 성공 확률
n <- 20    # 시행 횟수
x <- 3     # 이하의 값

pbinom(x, n, p)

# 3-25
p <- 1-(0.3)-(0.7*0.3)-(0.7*0.7*0.3)-(0.7*0.7*0.7*0.3)
p
n <- 20
x <- 1
pbinom(x, n, p)


# 4-3
p <- 8/23
n <- 8
M = n*p
M


# 4-5
p <- 2/3
n <- 4
x <- 0:n  # 확률 질량 함수의 인수로 사용할 값 벡터
p_x <- dbinom(x, n, p)  
df <- data.frame(x=x, p_x=p_x)  
print(df)  # 분포표 출력


# 5-3
m <- 5  
x <- 0      
dpois(x, m)  


# 5-7
n <- 200    
p <- 0.002 
x <- 0  
px <- dbinom(x, n, p)
px # 모든 고지서가 올바를 확률
1 - px 


m <- n*p
1 - ppois(0, m)


