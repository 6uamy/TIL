## 리액트?

- 메타에서 개발한 오픈 소스 자바스크립트 라이브러리
- 사용자 인터페이스를 만들기 위해 사용된다.

### 기본 사용법

```JavaScript

<div id="ReactApp"></div>

<script type="text/babel">
  class Greeter extends React.Component {
    render() {
      return <h1>{this.props.greeting}</h1>
    }
  }

  ReactDOM.render(<Greeter greeting="Hello World!" />, document.getElementById('ReactApp'));
</script>

```

### 리액트의 대표적인 특징

- 속성과의 단방향 데이터 바인딩
- 스테이트풀 컴포넌트
- 가상 DOM
- 라이프사이클 메서드
- JSX
- 단순 HTML 랜더링 그 이상의 아키텍처


https://it-factory-with-taek.tistory.com/15
