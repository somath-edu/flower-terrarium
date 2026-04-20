#import "../templates/exam_layout.typ": exam_layout, prob

#show: exam_layout.with(
  title: "유형 01. 유리함수의 무한대 극한 [하]",
)

#prob(score: 2, sol: [
  1단계: 무한대 분의 무한대 꼴이며 분모와 분자의 차수가 2차로 같습니다. \
  2단계: 최고차항($x^2$)의 계수비만 따지면 $frac(5, 2)$입니다. \
  *답: $frac(5, 2)$*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(5x^2 + 1, 2x^2 - 3)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 분모와 분자의 차수가 1차로 같습니다. \
  2단계: $x$의 계수비를 구하면 $frac(10, 5) = 2$입니다. \
  *답: 2*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(10x - 3, 5x + 7)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 분모와 분자의 차수가 2차로 같습니다. \
  2단계: $x^2$의 계수비를 구하면 $frac(4, 1) = 4$입니다. \
  *답: 4*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(4x^2 + 7x, x^2 + 5)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 분모와 분자의 최고차항이 모두 2차입니다. \
  2단계: 계수비를 구하면 $frac(2, 1) = 2$입니다. \
  *답: 2*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(2x^2 + 3, x^2 - x + 1)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 1차식 간의 계수 비교 문제입니다. \
  2단계: 계수비는 $frac(6, 3) = 2$입니다. \
  *답: 2*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(6x - 2, 3x + 1)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 분모, 분자 모두 2차식입니다. \
  2단계: 계수비는 $frac(1, 2)$입니다. \
  *답: $frac(1, 2)$*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(x^2 + 4, 2x^2 + x)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 최고차항인 $x^2$의 계수를 봅니다. \
  2단계: 계수비는 $frac(7, 14) = frac(1, 2)$입니다. \
  *답: $frac(1, 2)$*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(7x^2 - 5, 14x^2 + 2x)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 1차항의 계수를 비교합니다. \
  2단계: 계수비는 $frac(1, 2)$입니다. \
  *답: $frac(1, 2)$*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(x + 5, 2x - 1)$]
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 분모와 분자의 차수가 2차로 같습니다. \
  2단계: 계수비는 $frac(3, 1) = 3$입니다. \
  *답: 3*
])[
  다음 극한값을 구하시오. (2 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(3x^2, x^2 + x)$]
]

#v(1fr)
#colbreak()

#prob(score: 3, sol: [
  1단계: $oo/oo$ 꼴의 계수 비교 문제입니다. \
  2단계: $x^2$의 계수비 $frac(8, 4) = 2$입니다. \
  *답: 2*
])[
  다음 극한값을 구하시오. (3 점)
  #v(0.8em)
  #h(5em) #text(size: 15.75pt)[$lim_(x -> oo) frac(8x^2 + 1, 4x^2 - 7)$]
]
