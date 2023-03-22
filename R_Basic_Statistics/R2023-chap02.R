

# arithmetic operations: +, -, *, /, ^ ------------------------------------
3+2
3-2
3*2
3/2
3^4

# ---------------------------------------------
# 이걸로 그룹을 나누어서 관리 가능!


# basic functions ---------------------------------------------------------
exp(1) # 자연상수e^1
log(3) # ln이 기본값.
log(exp(3))
log10(10) 


# string, 문자열 -------------------------------------------------------------
"Hello, R" 


# help (함수에 대한 정보를 얻을 수 있음)--------------------------------------------------------------------

help(log)
?log


# variables (대/소문자 구별, a letter + (letter/digit/./_))------------------------------------------------

a <- 3 # a = 3이랑 같음.
b <- 2
c <- a*b + exp(a)
c # 출력력
print(c)              

a <- "Hello, R"    
print(a)

# vectors -----------------------------------------------------------------

a <- c(2,1,6) #c = combine, 벡터 표시
b <- c(4,3,8)
c <- a+b
print(c)

d <- a*b
print(d)

e <- a/b
print(e)

a[1] # 인덱스는 1부터
a[1] <- 8
a
length(a)


# comments ----------------------------------------------------------------
a <- 3 
b <- 2
c <- 3*b - log(a)       # my value


# section - Ctrl + Shift + R / Ctrl + Alt + t -----------------------------
a <- 3 
b <- 2
c <- 3*b - log(a)       # my value

# -------------------------------------------------------------------------



# data 입력 -----------------------------------------------------------------

data1 <- c(3,21,78, 2)
data2 <- c("A", "B", "A", "O")  # 문자열은 따옴표 " " 사용하여


# frequency table ---------------------------------------------------------

blood <- c("A","B","A","B","O","AB","O","A","B","A") # 데이터
bloodfreq <- table(blood) # 도수 분포표 변환
bloodfreq
# print(bloodfreq)         Ctrl + Shift + c (주석처리)


# freq/relative freq table ------------------------------------------------
bloodfreq/length(blood) # 상대도수

# cbind = 데이터 붙이기 / 도수 + 상대도수
t2 <- cbind("도수"=bloodfreq,"상대도수"=bloodfreq/length(blood)) # matrix
print(t2)

# 참고
t3 <- matrix(c(bloodfreq, bloodfreq/length(blood)), nrow = length(bloodfreq))
rownames(t3) <- names(bloodfreq)
colnames(t3) <- c("도수", "상대도수")
print(t3)

# Rmk) 
# sum(bloodfreq)
# t2 <- list("도수"=bloodfreq,"상대도수"=bloodfreq/length(blood))
# t2 <- data.frame("도수"=bloodfreq,"상대도수"=bloodfreq/length(blood))

# 원형그래프, 막대그래프 ------------------------------------------------------------

pie(bloodfreq) # 원형그래프
barplot(bloodfreq) # 막대그래프


# 도수분포표로부터 원형그래프, 막대그래프
bloodfreq <- c(4, 1, 3, 2)
pie(bloodfreq)

# 원형 그래프 이름 변경
names(bloodfreq) <- c("A", "AB", "B", "O")
pie(bloodfreq)

# 막대 그래프 이름 변경 (종류 변경, 크기는 숫자로 표현)
barplot(bloodfreq)


# ex 2.3.2 ----------------------------------------------------------------

# 안전사고 1,132건 중
# 추락사고, 329건
# 화상, 256건
# 열사병, 219건
# 타박상, 202건
# 부주의, 40건
# 기타, 86건
# 
# 위 자료를 가지고 상대도수를 포함하는 도수분포표를 작성한 후
# 원형그래프와 막대그래프를 그려라.
data1 = c(329, 256, 219, 202, 40, 86)
data1
names(data1) <- c('추락사고', '화상', '열사병', '타박상', '부주의', '기타')
data1
pie(data1)
barplot(data1)

# plot/lines --------------------------------------------------------------

x <- c(1,2,3,4)
y <- c(3,5,2,7)
plot(x,y) # 점

# type = "l", "p", "b", "h" 
plot(x, y, type="b") # 점과 직선
plot(x, y, type="l") # 직선
plot(x, y, type="p") # 점
plot(x, y, type="h")  # 얇은 막대그래프?

plot(y, type="b") # plot(x, y, type="b")


barplot(y) # 막대그래프
lines(y, type = "b") # 도수다각형
# 막대 그래프의 중심 값이 아니라 이상하게 찍힘.

# 막대 그래프의 중심을 x에 넣어줌.
x <- barplot(y)     # note) class(x): matrix
lines(x, y, type = "b", col = "red", lwd = 2) # color = 색, lwd = 두께

# ex) pareto ----------------------------------------------------------------
# 불량의 종류: 찢어짐, 구멍뚫림, 기타, 잘못접혀짐, 크기불량, 두께불량
# 도수       : 23, 16, 4, 3, 2, 2

freq <- c(23, 16, 4, 3, 2, 2) # 수량
names(freq) <- c("찢어짐", "구멍뚫림", "기타", "잘못접혀짐", "크기불량", "두께불량") # 이름과 매칭

relfreq <- freq/sum(freq) # 상대도수
x <- barplot(relfreq, ylim=c(0,1)) # 상대도수에 대한 막대그래프 -> y의 범위 0 ~ 1
cumfreq <- cumsum(relfreq) # 누적상대도수
lines(x, cumfreq, type = "b", col="red", lwd=2) # 누적상대도수에 대한 도수다각형

# ex 2.3.5 ----------------------------------------------------------------
# 결함, 발생건수
# 차체, 72
# 보조장비, 53
# 전기, 12
# 전동장치, 8

# 엔진, 5
data <- c(72,53,12,8,5)
names(data) <- c("차체", "보조장비", "전기", "전동장치", "엔진")

reldata <- data/sum(data)
data_x <- barplot(reldata, ylim=c(0,1))
cumdata <- cumsum(reldata)
lines(data_x, cumdata, type="b", col="red", lwd=2)

# continuous data -------------------------------------------------------------


# 점도표 (dot diagram) -------------------------------------------------------

x <- c(100,120,80,95,110,100)
dotchart(x) # 점도표 -> 중복 값은 위치를 다르게 표현함.
stripchart(x) # 중복값 무시
stripchart(x,method="stack") # 중복값은 개수로 표현함.


# histogram ---------------------------------------------------------------
# data from ex 7, p. 19
data <- c(181, 161, 170, 160, 158, 169, 162, 179, 183, 178, 171, 177, 163,
          158, 160, 160, 158, 174, 160, 163, 167, 165, 163, 173, 178, 170,
          167, 177, 176, 170, 152, 158, 160, 160, 159, 180, 169, 162, 178,
          173, 173, 171, 171, 170, 160, 167, 168, 166, 164, 174, 180)

# h is a list. typeof(h)
h <- hist(data) # 히스토그램 -> 넓이의 합이 1이 아님.
h # data 히스토그램에 대한 정보
h$counts # 해당 데이터의 반복값을 출력함. = 도수 
h$breaks # 자동으로 계급값을 나누어서 출력함. #[b1, b2], (b2, b3], ..., (bn-1, bn]
h$mids # 계급의 중간값값

#total area of bars is 1.
h <- hist(data, probability = TRUE) # 확률기준으로 히스토그램을 그림. 

h$density # 각 기둥의 확률값
sum(h$density) # 모든 기둥의 확률 값의 합

# 확률값 X 계급값 (뒤 수치 - 앞 수치)
sum(h$density*(h$breaks[2:8]-h$breaks[1:7])) # 히스토그램의 넓이의 합 = 1
h$breaks[2:8]-h$breaks[1:7] # 계급값 


# histogram 2 -------------------------------------------------------------
h <- hist(c(1,2,3,4), breaks=c(1,2,3,4)) # class: [1,2], (2, 3], (3, 4]
# break : 계급구간 

# xlab = x축 이름, main = 이름 
h <- hist(c(1,1.2,2.3,2,2.4,3), breaks=c(-0.5, 0.5,1.5,2.5,3.5,4.5),xlab="mydata", main="hist")
h
lines(h$mids, h$counts,col="blue", lwd = 2) # 계급 중간값, 도수, 색깔, 두께 -> 도수다각형 

h <- hist(c(1,1.2,2.3,2,2.4,3), breaks=c(-0.5, 0.5,1.5,2.5,3.5, 4.5),xlab="mydata", main="hist", prob=T)
h
lines(h$mids, h$density,col="blue", lwd = 2) # 계급 중간값, 확률값, 색깔, 두께 -> 도수다각형 


# ex 8, histogram ---------------------------------------------------------
data <- c(181, 161, 170, 160, 158, 169, 162, 179, 183, 178, 171, 177, 163,
          158, 160, 160, 158, 174, 160, 163, 167, 165, 163, 173, 178, 170,
          167, 177, 176, 170, 152, 158, 160, 160, 159, 180, 169, 162, 178,
          173, 173, 171, 171, 170, 160, 167, 168, 166, 164, 174, 180)

min(data) # 최솟값 
max(data) # 최댓값 
range(data) # 최솟값 and 최댓값 

l <- max(data) - min(data) # 범위
n <- 7 # 계급의 개수
w <- l/n # 계급의 크기
print(w) # 4.425... -> 범위 = 5 
width <- 5

a <- 149.5 # 시작값 

edges <- seq(a, a + n*width, by = width)
# 149.5 + (5*1), 149.5 + (5*2), 149.5 + (5*3), .......
print(edges) # 149.5 154.5 159.5 164.5 169.5 174.5 179.5 184.5

h <- hist(data, breaks = edges, prob=T) # 데이터, 계급구간, 히스토그램 
lines(h$mids, h$density, col="red", lwd = 2) # 계급구간의 중간값, 확률값, 색, 두께


edges <- seq(a-width, a + (n+1)*width, by = width) # 앞귀로 계급 구간 하나씩 추가!
print(edges)

h <- hist(data, breaks = edges, prob=T)
lines(h$mids, h$density, col="red", lwd = 2)

# stem and leaf -----------------------------------------------------------

# 줄기 잎 그림 
stem(data)
stem(data, scale=0.5)


# ex. 2.5.13 --------------------------------------------------------------

# 다음은 20곳에 설치된 어떤 상품의 자판기에서 거두어들인 하루 수입을 각각 기록한
# 자료이다.
data <- c(749, 776, 813, 585, 649, 679, 760, 751, 767, 642,
          580, 681, 734, 754, 594, 654, 747, 765, 651, 760)


# (1) 계급의 개수가 5이고 각 계급의 중간값을 600,650,700,750,800으로 하여
# 도수분포표와 히스토그램을 작성하라.

l <- max(data) - min(data) # 범위
n <- 5 # 계급의 개수
w <- l/n # 계급의 크기
print(w) # 4.425... -> 범위 = 46.6
width <- 50

a <- 575 # 시작값 
edges <- seq(a, a + n*width, by = width) # by = 증가값
edges

h <- hist(data, breaks = edges, prob=T) # 데이터, 계급구간, 히스토그램 
lines(h$mids, h$density, col="red", lwd = 2) # 계급구간의 중간값, 확률값, 색, 두께


# (2) 계급의 개수가 3인고, 각 계급의 중간값을 600,700,800으로 하여 
# 도수분포표와 히스토그램을 작성하라.

l <- max(data) - min(data) # 범위
n <- 3 # 계급의 개수
w <- l/n # 계급의 크기
print(w) # 4.425... -> 범위 = 77.6
width <- 100

a <- 550 # 시작값 
edges <- seq(a, a + n*width, by = width)

h <- hist(data, breaks = edges, prob=T) # 데이터, 계급구간, 히스토그램 
lines(h$mids, h$density, col="red", lwd = 2) # 계급구간의 중간값, 확률값, 색, 두께


# (3) 위 히스토그램을 비교하라