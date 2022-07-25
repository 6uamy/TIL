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

1. 속성과의 단방향 데이터 바인딩
    - 보통 props라 불리는 속성들은 부모 컴포넌트로부터 컴포넌트에 전달된다. 컴포넌트들은 props을 하나의 불변의 값(자바스크립트 객체)들로 받는다.
2. 스테이트풀 컴포넌트
3. 가상 DOM
4. 라이프사이클 메서드
5. JSX
    -  JSX는 자바스크립트와 HTML을 동시에 사용하며, HTML에 자바스크립트의 변수들을 바로 사용할 수 있는 일종의 템플릿 언어이다.
     
``` JavaScript
    const App = () => {
  const hello = 'Hello world!';
  return <div>{hello}</div>;
};
```
7. 단순 HTML 랜더링 그 이상의 아키텍처


https://it-factory-with-taek.tistory.com/15
