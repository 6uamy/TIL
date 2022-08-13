### 📑 function

#### 함수 선언문

* 함수명: 함수의 기능에 알맞은 이름을 설정한다. <br>=> 함수는 어떤 기능을 수행하는 역할을 하기 때문에 동사나 명령어 형식으로 지정하는 것이 좋다.
* 매개변수: 매개변수는 없을 수도 여러 개가 존재할 수도 있다.
* 함수는 한 번에 한 작업만 하는 것이 좋다.
* 함수를 사용하면 유지보수가 쉽다는 장점이 있다. (문제가 발생한 해당 함수만 수정하면 됨)
* 함수 내부에 선언한 변수는 지역변수이기에 해당 함수 내부에서만 사용이 가능하다.
* 함수 선언문은 어디서든 호출이 가능하다.
    * Why? 함수를 선언할 때 hoisting이 발생한다.  
    * hoisting : JavaScirpt는 실행 전 초기화 단계에서 코드의 모든 함수 선언문을 찾아 생성해 둔다.

```javascript
function sayHi(name) {
    let msg = 'Hi';
    if(name) {
        msg += `, ${name}`; // msg = msg + `, &{name}`;
    }
    console.log(msg);
}

sayHi(); // 매개변수를 지정하지 않는 경우 undefined가 전달된다.
sayHi('Taek');
```

#### function return

* return type 이 없는 함수들은 항상 undefined를 반환한다.
* 함수를 종료하는 목적으로도 사용한다.

```javascript
function add(num1, num2) {
    return num1, num2 // return의 오른쪽 값을 반환한 뒤 함수를 그 즉시 종료한다.
}

const result = add(2, 3); // result = 5
```

#### 함수 표현식

* JavaScript가 코드를 한 줄씩 읽으면서 실행되기 때문에 코드에 도달하면 생성된다.<br>=> 생성된 이후에만 함수 사용이 가능하다.
* 보통 더 자유롭게 쓸 수 있는 함수 선언식을 사용한다.

```javascirpt
let sayHi = function(){
     console.log('Hi');
}

sayHi();
```

#### 화살표 함수(arrow function)

* const arrow = (params1, params2 ...) => return 할 logic
* 기존의 함수를 보다 간결하게 작성이 가능하다.
* 항상 이름이 없는 anonymous function 이다.

##### 예시1

```javascirpt


function sayHi(){
     console.log('Hi');
}


let sayHi = () => {console.log('Hi')};
```

##### 예시2

```javascirpt
// 기존 함수 표현식
const add = function (num1, num2) {
     const result = num1 + num2;
     return result;
};

// 화살표 함수
const add = (num1, num2) => num1 + num2;
```
