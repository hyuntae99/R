
# ex3 ---------------------------------------------------------------------

# 멘델의 법칙에 따르면 혼합 색의 꽃나무 자가 수정 시 25%는 빨간 꽃을 피운다.
# 5그루를 자가 수정시켜 5그루의 꽃나무를 얻었을 때 다음의 확률은?
# (1) 빨간 꽃나무가 하나도 없다.
dbinom(0,5,0.25)
pbinom(0,5,0.25)
# (2) 빨간 꽃나무가 4그루 이상이다.
1-pbinom(3,5,0.25)
dbinom(4,5,0.25) + dbinom(5,5,0.25)


# ex4 ---------------------------------------------------------------------
# 어떤 병이 새로운 치료방법으로 치유될 확률이 50%
# 15명의 환자에게 이 치료법을 적용하였을 때 다음 확률은?
# (1) 6명 이하가 치유되었다.
pbinom(6,15,0.5)
# (2) 6명 이상 10명 이하가 치유되었다.
pbinom(10,15,0.5) - pbinom(5,15,0.5)
# (3) 12명 이상이 치유되었다.
1-pbinom(11,15,0.5)

# ex5 ---------------------------------------------------------------------
# 48대의 차량 중 12대에 불량 오디오가 설치 됨. 
# 선택한 8대 차량 중 오디오가 불량인 차가 적어도 1대 이상이 될 확률?
1-phyper(0,12,36,8)


# ex6 ---------------------------------------------------------------------
# 50분 강의시간에 평균적으로 3번의 카톡 수신음이 울린다고 한다. 
# 수업 중 한 번이라도 카톡 수신음이 울리면 퀴즈를 보기로 할 때 퀴즈를 보게 될 확률은?
m = 3
1-ppois(0,m)



# ex7 ---------------------------------------------------------------------
# 어떤 초등학교에서 지난 10년간 조사결과 평균적으로 4%의 학생이 색맹
# 올해에도 색맹인 학생의 비율이 예년과 같다고 가정할 때
# 임의로 추출된 200명의 학생 중 색맹인 학생이 10명 이하일 확률은?
pbinom(10,200,0.04)
