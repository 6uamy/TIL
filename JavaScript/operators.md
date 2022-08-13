### __📑 할당 연산자__

* 'num += 5' 와 'num = num + 5'는 같은 연산을 의미한다.

```javascript
let num = 10;

num += 5; // num = num + 5;
num -= 5;
num *= 5;
num /= 5;
num %= 5;
```

### __📑 증가, 감소 연산자__

#### 증가 연산자 '++'

* variable = ++value > 값을 증가시킨 후 변수에 값을 할당한다.
* variable = value++ > 값을 증가시키기 전에 변수에 값을 할당한다.

```javascript
let num = 10;
const pre_result = ++num; // pre_result = 11
const post_result = num++; // post_result = 10
```

#### 감소 연산자 '--'

* variable = --value > 값을 감소시킨 후 변수에 값을 할당한다.
* variable = value-- > 값을 감소시키기 전에 변수에 값을 할당한다.

```javascript
let num = 10;
const pre_result = --num; // pre_result = 9
const post_result = num--; // post_result = 10
```

### __📑 비교 연산자__

* '>', '<', '>=', '<=', '==', '!='
* 참 일시 true, 거짓일 시 false를 반환한다.

```javascript
console.log(10 > 5); // true
console.log(10 == 5); // false
console.log(10 != 5); // true
```

* 동등 연산자
    * 'a=1', "b='1'" 일 경우 a == b 의 결과는 true가 반환된다.

* 일치 연산자
    * 'a=1', "b='1'" 일 경우 a === b 의 결과는 false가 반환된다. > Data type까지 비교한다!
    
### __📑 논리 연산자__

* &&(AND)
    * 모든 값이 true일 때 true 즉, 하나라도 false면 false를 반환한다.
    * 첫 번째 false를 발견하는 즉시 평가를 멈춘다.
* ||(OR)
    * 여러개 중 하나라도 true면 true 즉, 모든 값이 false일때만 false를 반환한다.
    * 첫 번째 true를 발견하는 즉시 평가를 멈춘다.
* !(NOT) 3가지의 논리 연산자가 존재한다.
    * true면 false, false면 true를 반환한다.
    




