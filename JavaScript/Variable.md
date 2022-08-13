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
