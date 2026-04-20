// --- 수능형 프리미엄 문제지 레이아웃 템플릿 (V3.2 최종 안정화 버전) ---
#let prob_counter = counter("prob_counter")
#let solution_state = state("solution_state", ())

#let exam_layout(
  title: "유형 01. 극한값의 기본 계산 [하]",
  subtitle: "", // "수학 영역" 삭제
  doc
) = {
  // 1. 기본 페이지 설정
  set page(
    paper: "a4",
    margin: (x: 1.5cm, top: 2.2cm, bottom: 2cm),
    header: context {
      if counter(page).get().first() > 1 {
        block(width: 100%, inset: (bottom: 5pt))[
          #set text(size: 9pt, fill: gray.darken(20%))
          #title #h(1fr) #if subtitle != "" [#subtitle (계속)] else [문제지 (계속)]
          #v(-3pt)
          #line(length: 100%, stroke: 0.4pt + gray.lighten(30%))
        ]
      }
    },
    background: place(center + top, dy: 3.8cm)[
      #line(start: (0pt, 0pt), end: (0pt, 23cm), stroke: 0.3pt + gray.lighten(40%))
    ],
    footer: [
      #set text(size: 9pt, fill: gray)
      #line(length: 100%, stroke: 0.5pt + gray.lighten(50%))
      #grid(
        columns: (1fr, 1fr),
        align(left)[*Math Wiki 전문 교과서 시뮬레이션*], 
        align(right)[#context counter(page).display("1 / 1", both: true)],
      )
    ]
  )

  // 2. 폰트 설정
  set text(
    font: ("Batang", "AppleMyungjo", "serif"),
    size: 10.5pt,
    lang: "ko"
  )

  // 수식 설정: 모든 수학 연산자(lim, sum 등)의 극한 조건을 항상 상/하단에 강제 배치
  // Typst의 자동 인라인 최적화를 무시하고 정석 표기법을 유지합니다.
  show math.op: math.limits.with(inline: true)

  // 3. 메인 헤더 박스 (1페이지 상단) - 성명 칸 우측 최적화
  block(width: 100%, stroke: 1.2pt + black, inset: 12pt)[
    #align(center)[
      #text(size: 18pt, weight: "bold", tracking: 0.1em)[#title]
    ]
    #v(0.5em)
    #line(length: 100%, stroke: 0.8pt + black)
    #v(0.3em)
    #box(width: 100%)[
      #set align(left)
      #h(50% + 11.5em) 
      *성명:* #h(5em)
    ]
  ]

  v(1.5em)

  // 4. 문제 본문 (2단 구성)
  prob_counter.update(0)
  solution_state.update(()) // 상태 초기화
  
  columns(2, gutter: 3em)[#doc]

  // 5. [자동 풀이집 페이지]
  page(header: none, background: none, columns: 1)[
    #align(center)[
      #v(1em)
      #text(size: 20pt, weight: "bold", tracking: 0.2em)[[ 정답 및 해설 ]]
      #v(0.5em)
      #line(length: 100%, stroke: 1pt + black)
      #v(1.5em)
    ]

    // 장부(State)에 기록된 모든 해설을 한 번에 출력
    #context {
      let items = solution_state.final()
      for data in items {
        // breakable: false를 통해 문제와 풀이가 페이지 경계에서 잘리는 것을 방지
        block(width: 100%, inset: (bottom: 2em), breakable: false)[
          #text(weight: "bold")[#data.num.] #h(0.5em) #data.body 
          #v(0.5em)
          #text(fill: rgb("#e62e2e"), weight: "medium")[
            *풀이:* \
            #data.sol
          ]
        ]
      }
    }
  ]
}

// 개별 문제 구성함함수 (장부에 해설 자동 기록)
#let prob(body, score: 3, sol: "풀이가 준비중입니다.") = {
  prob_counter.step()
  
  // 현재 번호 가져오기 (해설지 기록용)
  context {
    let current_num = prob_counter.at(here()).first()
    solution_state.update(s => s + ((num: current_num, body: body, sol: sol),))
  }
  
  block(width: 100%, breakable: true, inset: (bottom: 4em))[
    #grid(
      columns: (2em, 1fr),
      gutter: 0.5em,
      align(right)[#context text(weight: "bold")[#prob_counter.display("1.")]],
      [
        #text(weight: "medium")[#body]
        #h(1fr) 
        #text(size: 8.5pt, weight: "light", fill: gray.darken(30%))[(#score 점)]
      ]
    )
  ]
}
