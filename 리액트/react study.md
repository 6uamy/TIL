## React?

- 메타에서 개발한 오픈 소스 자바스크립트 라이브러리
- 사용자 인터페이스를 만들기 위해 사용된다.
- 기본 사용법

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

https://it-factory-with-taek.tistory.com/15
