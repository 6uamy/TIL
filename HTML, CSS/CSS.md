## 🖥️ CSS(Cascading Style Sheets)?

### [CSS 문법 참고 사이트](https://devdocs.io/css/)

#### 마크업 언어가 실제 표시되는 방법을 기술하는 스타일 언어로 웹 페이지 디자인을 하기위해 작성하는 코드이다.

- style태그 또는 style속성을 사용하여 CSS문법을 작성하고 적용할 수 있다.

#### 🗒️ 선택자

- 우선순위: 아이디 > 클래스 > 태그

##### CSS 언어로 선택자를 언급할 경우

- 아이디: #
- 클래스: .
- 태그: 태그명

- 스타일 태그 내에서 태그끼리의 선택자 우선 순위는 html 문서 내에 가장 하단, body 태그 내에서 가까운 선택자이다.

#### 🗒️ 박스 모델

- 화면전체 block level element
- 자기구역 inline level element
- 폭은 width, 높이는 hight
- 테두리와 글자 사이간격 padding
- 테두리와 테두리사이 margin

#### 🗒️ 그리드

- div: 어떤 의미도 존재하지 않는 태그, block level element
- span: 어떤 의미도 존재하지 않는 태그, inline element
- grid의 사용
    - display:grid;
    - grid-template-columns: 150px 1fr (fr 화면의 크기에 따른 비율로 조정된다. columns:열, rows:행)

#### 🗒️ 미디어쿼리

- 미디어 쿼리를 사용하여 반응에 따라 움직이는 웹 사이트 구현이 가능하다.

```html
@media(min-width:800px){ 
            div {
                display: none;
            }
        }
```

- 800px 보다 웹 페이지가 커질 시 해당 디스플레이를 none으로 바꿔준다.
