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
const pre_result = ++num; // result = 11
const post_result = num++; // result = 10
```

#### 감소 연산자 '--'

* variable = --value > 값을 감소시킨 후 변수에 값을 할당한다.
* variable = value-- > 값을 감소시키기 전에 변수에 값을 할당한다.

```javascript
let num = 10;
const pre_result = --num; // result = 9
const post_result = num--; // result = 10
```
