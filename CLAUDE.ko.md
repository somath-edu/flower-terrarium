# MathWiki 사서 규칙 (CLAUDE.ko.md)

이 문서는 **MathWiki** 초중고 디지털 수학교과서 프로젝트를 위한 핵심 기술 스택 및 작업 원칙입니다.

## 1. 워크플로우
**Raw (/raw)** → **Vault (/vault)** → **Web (/web)**

- `/raw`: 수집된 원본 자료.
- `/vault`: 정리된 지식 (옵시디언).
- `/web`: 디지털 출판 (Astro).

## 2. 핵심 오픈소스 및 기술 스택
- **프레임워크**: [Astro](https://astro.build/) (정적 웹사이트 생성)
- **수학 수식**: [KaTeX](https://katex.org/) (CDN: v0.16.11)
- **인터랙티브 그래프**: [JSXGraph](https://jsxgraph.uni-bayreuth.de/) (로컬 연동)
- **디자인/UI**: CSS Grid, 코넬 노트 레이아웃 (CornellNote 컴포넌트)

## 3. 로컬 라이브러리 보관소 (OpenSource_Lab)
바탕화면의 라이브러리 허브를 참조하여 프로젝트의 안정성을 유지합니다.
- **경로**: `/Users/imac/Desktop/OpenSource_Lab/Frameworks/`
- **보유 목록**: `jsxgraph`, `mathjs`, `mafs`, `d3`, `mermaid-src` 등
- **연동 전략**: 외부 CDN 장애에 대비하여 `OpenSource_Lab`의 파일을 프로젝트의 `web/public/lib/` 하위로 복사하여 사용합니다.

## 4. 수학 수식 작성 규칙 (Astro 전용)
Astro 파일 내에서 KaTeX를 안정적으로 렌더링하기 위한 필수 규칙입니다.
1.  **캡슐화**: 모든 수식은 `{ "$ ... $" }` 로 감싸야 합니다.
2.  **이스케이프**: 백슬래시(`\`)가 포함된 명령어는 반드시 이중 백슬래시(`\\`)를 사용합니다.
    - 예: `\\to`, `\\lim`, `\\displaystyle`, `\\mathbf`, `\\frac`
3.  **정렬**: 핵심 문제는 `.formula-box` 클래스를 사용하여 중앙 정렬 및 가독성을 확보합니다.

## 5. 디자인 원칙
- **아날로그 감성**: EB Garamond, 미색 종이 질감(Cornell paper).
- **난이도 컬러**: [하]-초록, [중]-주황, [수능]-빨강 테마 적용.

## 6. 사서의 사명
"수집된 원본 정보를 체계적인 수학교과서 데이터로 정제하고, 이를 아름답고 고급스러운 웹 페이지로 시각화한다."
