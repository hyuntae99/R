
# normal scores plot -------------------------------------------------------
# normal probability plot

data <- c(68, 82, 44, 75)
n <- length(data)
m <- qnorm((1:n)/(n+1))     # normal scores
data_sorted <- sort(data)         # sorted

plot(data_sorted, m, ylim = c(-2, 2))  # Rmk) qqnorm(data)

xbar <- mean(data_sorted)
s <- sd(data_sorted)
lines(data_sorted, (data_sorted - xbar)/s, col="blue", lwd=2 )

# 함수를 통한 구현 
qqnorm(data) 
qqline(data, col="blue", lwd=2)

# ex1 ---------------------------------------------------------------------

# getwd()
# setwd("path")
# data1.csv의 자료로 부터 정규확률그림을 그리고, 근사직선도 같이 그려라.
getwd() #  경로 확인 
setwd("C:/R_Basic_Statistics/R2023-normalprob") # 경로 설정 
data1 <- read.csv("data1.csv", header = T) # data1.csv파일에서 data 읽어오기 
data1 # 1개의 열로 표현된 데이터
data1 <- data1[,1] # 1개의 행으로 표현되도록 함 (벡터처럼 바꿈)

n <- length(data1)
data1_sorted <- sort(data1)
m <- qnorm((1:n)/(n+1))
plot(data1_sorted, m, ylim = c(-2, 2)) # 정규확률그림 

xbar <- mean(data1_sorted)
s <- sd(data1_sorted)
lines(data1_sorted, (data1_sorted - xbar)/s, col="blue", lwd=2 ) 
# 정규확률그림을 해석하기 위한 직선 (X = M + s*Z)

# 함수를 통한 구현 
qqnorm(data1)
qqline(data1, col="blue", lwd=2)


# ex2  --------------------------------------------------------------------
# ex. 12
# data2.csv의 자료로 부터 정규확률그림을 그리고, 근사직선도 같이 그려라.
setwd("C:/R_Basic_Statistics/R2023-normalprob")
data2 <- read.csv("data2.csv", header = T)
data2 <- data2[,1]

n <- length(data2)
data2_sorted <- sort(data2)
m <- qnorm((1:n)/(n+1))
plot(data2_sorted, m, ylim = c(-2, 2)) 

xbar <- mean(data2_sorted)
s <- sd(data2_sorted)
lines(data2_sorted, (data2_sorted - xbar)/s, col="blue", lwd=2 ) 

# 함수 사용 
qqnorm(data2)
qqline(data2, col="blue", lwd=2)




# ex3 ---------------------------------------------------------------------
# ex 13
# data3.csv의 자료로 부터 정규확률그림을 그리고, 근사직선도 같이 그려라.
# 또한, 적절한 변환을 하여 정규분포로 접근시켜 보아라.
setwd("C:/R_Basic_Statistics/R2023-normalprob") 
data3 <- read.csv("data3.csv", header = T) 
data3 <- data3[,1] 

n <- length(data3)
data3_sorted <- sort(data3)
m <- qnorm((1:n)/(n+1))
plot(data3_sorted, m, ylim = c(-2, 2)) 

xbar <- mean(data3_sorted)
s <- sd(data3_sorted)
lines(data3_sorted, (data3_sorted - xbar)/s, col="blue", lwd=2 ) 

qqplot(data3_sorted,m,ylim = c(-2, 2))

# 함수 사용 
qqnorm(data3)
qqline(data3, col="blue", lwd=2)


# ^0.5 --------------------------------------------------------------------
data3_sqrt <- sqrt(data3)

n <- length(data3_sqrt)
data3_sorted <- sort(data3_sqrt)
m <- qnorm((1:n)/(n+1))
plot(data3_sorted, m, ylim = c(-2, 2)) 

xbar <- mean(data3_sorted)
s <- sd(data3_sorted)
lines(data3_sorted, (data3_sorted - xbar)/s, col="blue", lwd=2 ) 

# 함수 사용 
qqnorm(data3_sqrt)
qqline(data3_sqrt, col="blue", lwd=2)

# ^0.25 -------------------------------------------------------------------
data3_sqrt_sqrt <- sqrt(data3_sqrt)

n <- length(data3_sqrt_sqrt)
data3_sorted <- sort(data3_sqrt_sqrt)
m <- qnorm((1:n)/(n+1))
plot(data3_sorted, m, ylim = c(-2, 2)) 

xbar <- mean(data3_sorted)
s <- sd(data3_sorted)
lines(data3_sorted, (data3_sorted - xbar)/s, col="blue", lwd=2 ) 

# 함수 사용 
qqnorm(data3_sqrt_sqrt)
qqline(data3_sqrt_sqrt, col="blue", lwd=2)


# sqrt를 할수록 정규확률그림이 직선에 가까워지는 것을 알 수 있다!

