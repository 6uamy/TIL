## 리액트 (React)?

* 사용자 인터페이스를 구축하기 위한 효율적이며 유연한 JavaScript 라이브러리
* 'Components'라고 하는 작은 코드 조각에서 복잡한 UI를 구성할 수 있다.
* 리액트를 이용하면 사용자와 상호작용할 수 있는 UI를 손쉽게 만들 수 있다.

### React 기본 예시

```JavaScript
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<h1>Hello, world!</h1>);
```
* 페이지에서 'Hello, world!'라는 제목이 표시된다.

### 리액트의 대표적인 특징

1. Components 기반의 라이브러리
    * 헤더, 메인, 버튼, 사이드바 메뉴 같은 것들을 컴포넌트 단위로 묶어 관리할 수 있다.
    * 특정 부분에서 오류가 생기면 해당 컴포넌트만 수정하여 사용할 수 있기에 코드의 재사용성과 유지 보수성을 증가시켜 준다.
2. 단방향 데이터 바인딩 (One way data flow)
  - 리액트는 데이터의 흐름이 한 방향으로만 흐리기 때문에 부모의 데이터를 바꾸기 위해서는 state를 이용해야 한다.
    * 보통 props라 불리는 속성들은 부모 컴포넌트로부터 컴포넌트에 전달된다. 
    * 컴포넌트들은 props을 하나의 불변의 값들로 받는다.
3. Stateful 컴포넌트 
    * state는 변경 사항을 추적할 때 사용하고, App을 동적으로 만들 수 있게 해준다.
4. 가상 DOM
    * 가상의 Document Object Mode로 실제 DOM을 조작하는게 아닌, DOM을 추상화 한 JavaScript 객체를 구상해 사용한다.
5. 라이프사이클 메서드
6. JSX
    - JSX는 자바스크립트와 HTML을 동시에 사용하며, HTML에 자바스크립트의 변수들을 바로 사용할 수 있는 일종의 템플릿 언어이다.
     
``` JavaScript
    const App = () => {
  const hello = 'Hello world!';
  return <div>{hello}</div>;
};
```
7. 단순 HTML 랜더링 그 이상의 아키텍처

