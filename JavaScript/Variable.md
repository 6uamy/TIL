### __📑 let / const__

* let: 변수의 값이 변할 수 있는 값일 경우에 let을 선언하여 사용한다.
    * 메모리에서 read와 write가 가능하다. (mutable) 
* const: 변수의 값이 변하지 않는 값을 갖도록 할 경우에 const를 선언하여 사용한다.
    * 메모리에서 read만 가능하다. (immutable)

### __📑 Variable__

1. 변수는 문자와 숫자, $와 _ 만 사용
2. 첫글자는 숫자가 될 수 없다.
3. 예약어는 사용할 수 없다. (ex. public, return ...)
4. 가급적 상수는 대문자로 선언하기
5. 읽기 쉽고 이해할 수 있도록 변수 선언하기

### __📑 변수의 생성과정__

* var
   1. 선언 및 초기화 단계
   2. 할당 단계
* let
   1. 선언 단계
   2. 초기화 단계
   3. 할당 단계
* const
   1. 선언 + 초기화 + 할당 

### __📑 스코프__

* var: 함수 스코프(function-scoped)
* let, const: 블록 스코프(block-scoped) => 함수, if, for, try~catch ...

🏷️ ES6로 넘어오면서 예측가능한 결과를 내고 버그를 줄이기 위해 let, const를 지양하자!

### __📑 Date type__

```javascript
// 문자형 String
const name = "Taek";
const name = 'Taek'; 
const name = `My name is ${name}`; // 문자형 안에 변수를 넣을 경우 사용하기에 적합하다.
```

```javascript
// 숫자형 Number
const age = 30;

console.log(1 + 2); // 더하기
console.log(10 - 3); // 빼기
console.log(5 * 4); // 곱하기
console.log(6 / 2); // 나누기
console.log(6 % 4); // 나머지 6 % 4 = 2
```

```javascript
// 논리형 Boolean
const a = true; // 참
const b = false; // 거짓
```

* typeof 연산자
   * 변수의 자료형을 알 수 있다.

```javascript
console.log(typeof 2); // number
console.log(typeof 'hi'); // string
console.log(typeof true); // boolean
console.log(typeof null); // object
console.log(typeof undefined); // undefined
```

### __📑 형변환__

```javascirpt
Srting(10) // "10"

Number('1234') // 1234  문자형이 들어갈 경우 NaN
Number('true or false') // true는 1을 false는 0으로 형변환이 된다.
Number(null) // 0
Number(undefined) // NaN

Boolean() // 0, "", null, undefined, NaN과 같은 부정적인 형태는 false로 변환된다.
```

### __📑 String to ASCII__

```javascript
String.charCodeAt([문자열 자릿수]);
```

### __📑 toUpperCase() / toLowerCase()__

* 문자를 대소문자로 변환할 때 사용한다.

### __📑 str.indexOf(text)__

* 해당 문자의 위치를 반환하여 준다.
* 해당 문자가 없을 시 -1을 반환한다.

### __📑 str.slice(n, m)__

* 특정 문자의 범위만을 반환한다.
* n: 시작점, m: 없으면 문자열 끝, 양수면 그 숫자 전까지, 음수면 끝에서 부터 시작

### __📑 str.trim()__

* 문자열의 앞 뒤 공백을 제거하여준다.
