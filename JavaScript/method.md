### 📑 toString()

* 숫자를 문자로 바꾸어준다.
* 괄호안의 값으로 진수를 변환시켜준다.

```javascript
let num = 10;

num.toString(); // '10;
num.toString(2); // '1010'
```

### 📑 Math

* Math라는 전역 method 객체를 불러온다.

#### Math.ceil() : 소수점을 올림한다.
```javascript
let num = 5.3;

Math.ceil(num); // 6
```

#### Math.ceil() : 소수점을 내림한다.
```javascript
let num = 5.3;

Math.ceil(num); // 5
```

#### Math.round() : 소수점을 반올림한다.
```javascript
let num = 5.3;
let num2 = 5.7;

Math.ceil(num); // 5
Math.ceil(num2); // 6
```

### 📑 toFixed()

* 해당 소수점 자리까지만 반환한다.
* 문자열을 반환하여 주기에 숫자로 변환하는 작업에 유의해 주어야 한다.
