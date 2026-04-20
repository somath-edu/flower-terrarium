#import "../templates/exam_layout.typ": exam_layout, prob

#show: exam_layout.with(
  title: "유형 01. 극한값의 기본 계산 [하]",
)

#prob(score: 2, sol: [
  1단계: 다항함수의 극한은 직접 대입하여 계산합니다. \
  2단계: $x=2$를 대입하면, $3(2) - 1 = 5$ \
  *답: 5*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> 2} (3x - 1) $
]

#v(1fr)
#colbreak()

#prob(score: 2, sol: [
  1단계: 이차함수의 극한은 직접 대입하여 계산합니다. \
  2단계: $x=1$을 대입하면, $1^2 + 2(1) + 3 = 6$ \
  *답: 6*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> 1} (x^2 + 2x + 3) $
]

#v(1fr)
#colbreak()

#prob(score: 3, sol: [
  1단계: $frac(0, 0)$ 꼴이므로 분자를 인수분해합니다. ($x^2 - 9 = (x-3)(x+3)$) \
  2단계: 공통인수 $(x-3)$을 약분하면 $lim_{x -> 3} (x+3)$이 됩니다. \
  3단계: $x=3$을 대입하면 6입니다. \
  *답: 6*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> 3} frac(x^2 - 9, x - 3) $
]

#v(1fr)
#colbreak()

#prob(score: 3, sol: [
  1단계: 분모를 인수분해합니다. ($x^2 - 1 = (x+1)(x-1)$) \
  2단계: 공통인수 $(x+1)$을 약분하면 $lim_{x -> -1} frac(1, x-1)$이 됩니다. \
  3단계: $x=-1$을 대입하면 $frac(1, -2) = -frac(1, 2)$입니다. \
  *답: -1/2*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> -1} frac(x + 1, x^2 - 1) $
]

#v(1fr)
#colbreak()

#prob(score: 3, sol: [
  1단계: 분자를 $x$로 묶어 인수분해합니다. ($2x^2 + x = x(2x + 1)$) \
  2단계: 분모와 분자의 $x$를 약분하면 $lim_{x -> 0} (2x + 1)$이 됩니다. \
  3단계: $x=0$을 대입하면 1입니다. \
  *답: 1*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> 0} frac(2x^2 + x, x) $
]

#v(1fr)
#colbreak()

#prob(score: 3, sol: [
  1단계: 분모 $x-4$를 $(sqrt(x)-2)(sqrt(x)+2)$로 인수분해하거나 분자를 유리화합니다. \
  2단계: $(sqrt(x)-2)$를 약분하면 $lim_{x -> 4} frac(1, sqrt(x)+2)$가 됩니다. \
  3단계: $x=4$를 대입하면 $frac(1, 2+2) = frac(1, 4)$입니다. \
  *답: 1/4*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> 4} frac(sqrt(x) - 2, x - 4) $
]

#v(1fr)
#colbreak()

#prob(score: 3, sol: [
  1단계: 분자 $1-x$를 $(1-sqrt(x))(1+sqrt(x))$로 인수분해합니다. \
  2단계: $(1-sqrt(x))$를 약분하면 $lim_{x -> 1} (1+sqrt(x))$가 됩니다. \
  3단계: $x=1$을 대입하면 2입니다. \
  *답: 2*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> 1} frac(1 - x, 1 - sqrt(x)) $
]

#v(1fr)
#colbreak()

#prob(score: 4, sol: [
  1단계: $frac(infinity, infinity)$ 꼴이므로 분모의 최고차항인 $x$로 분모, 분자를 나눕니다. \
  2단계: 계수비만 남기면 $frac(3, 2)$가 됩니다. (차수가 같으므로 최고차항 계수비 적용) \
  *답: 3/2*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> infinity} frac(3x + 1, 2x - 5) $
]

#v(1fr)
#colbreak()

#prob(score: 4, sol: [
  1단계: 분모와 분자의 차수가 이차항으로 동일합니다. \
  2단계: 최고차항 계수비를 계산하면 $frac(2, 1) = 2$입니다. \
  *답: 2*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> infinity} frac(2x^2 - x, x^2 + 3) $
]

#v(1fr)
#colbreak()

#prob(score: 4, sol: [
  1단계: 분자에 켤례식을 곱하여 유리화합니다. ($frac((sqrt(x^2+2x)+x)(sqrt(x^2+2x)-x), sqrt(x^2+2x)-x)$) \
  2단계: 분자를 정리하면 $x^2 + 2x - x^2 = 2x$가 됩니다. \
  3단계: 무한대 분의 무한대 꼴에서 계수비를 따지면 $frac(2, sqrt(1)+(-1))$ ...아차, $x -> -infinity$이므로 $t = -x$로 치환합니다. \
  4단계: $lim_{t -> infinity} (sqrt(t^2-2t)-t) = lim_{t -> infinity} frac(-2t, sqrt(t^2-2t)+t) = -1$ \
  *답: -1*
])[
  다음 극한값을 구하시오.
  $ lim_{x -> -infinity} (sqrt(x^2 + 2x) + x) $
]

#v(1fr)
#align(center)[[ 연습 문제 세트 종료 ]]
