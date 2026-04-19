// --- 수능형 문제지 레이아웃 템플릿 ---
#let exam_layout(
  title: "2027학년도 대학수학능력시험 대비 핵심 문제집",
  subtitle: "수학 영역 (미적분 I)",
  chapter: "01. 함수의 극한과 연속",
  doc
) = {
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
  )

  // 기본 폰트 설정 (서버 환경 호환성을 위해 범용 폰트 추가)
  set text(
    font: ("New Computer Modern", "Batang", "Noto Serif KR", "Liberation Serif", "serif"),
    size: 10pt,
    lang: "ko"
  )

  // 제목 및 헤더
  align(center)[
    #text(size: 16pt, weight: "bold")[#title] \
    #v(0.5em)
    #text(size: 14pt, weight: "bold")[#subtitle]
  ]

  rect(width: 100%, stroke: 0.5pt + black, inset: 8pt)[
    #grid(
      columns: (1fr, 1fr),
      align(left)[*단위 단원:* #chapter],
      align(right)[*성명:* #h(5em)],
    )
  ]

  v(1em)

  // 2단 구성 설정
  show: columns.with(2, gutter: 2em)

  // 문항 스타일 정의
  set enum(numbering: "1.", indent: 0em)
  
  doc
}

// 문제 구성함수
#let prob(body, score: 4) = {
  block(width: 100%, breakable: true, inset: (bottom: 2em))[
    #enum.item(1)[
      #body #h(1fr) #text(size: 9pt, style: "italic", weight: "light")[(#score 점)]
    ]
  ]
}
