### 📑 조건문

#### if

* if 문은 괄호 안에 들어가는 조건을 평가해서 조건이 true일 경우 실행된다.
* 코드가 한 줄이면 '{}'를 생략해도 무방하지만 코드의 통일성과 가독성을 위해 사용해 주는 것이 좋다.

#### else

* else 문은 if 문의 조건이 false일 경우 실행된다.

``` javascript
const age = 20;

if(age > 19){
      // if 조건문 true
} else if(age === 19) {
      // else if 조건문 true
} else {
      // 조건문 false
}
```

### 📑 반복문

#### for

* (초기 값 설정, 조건 설정, 코드가 실행된 후 해야할 작업) 총 3가지 부분으로 나눠진다.

```javascript 
for (let i=0; i<10; i++) {
      // 반복할 코드
      // i=10이 되는 순간 for 문을 빠져나온다.
}
```

#### while

* while 문 괄호 안의 조건이 true일 경우 코드를 반복한다.
* while 문의 조건을 true로 설정 시 무한 loop를 돌게 된다. (※ 반복문 작성에 유의)

```javascript 
let i = 0;

while (i < 10) {
      // 반복할 코드
      // i=10이 되는 순간 while 문을 빠져나온다.
      i++;
}
```

#### do while

* do 절의 코드를 최소 한 번 이상은 실행한 뒤 while 문으로 들어간다.

```javascript 
let i = 0;

do {
    i++;
} while (i < 10) {
    
}
```

### 📑 break, continue

#### break

* break를 만나는 순간 즉시 코드 실행을 멈추고 해당 반복문을 빠져나온다.

```javascript 
let answer = false;

while (true) {
    if(!answer){
    break; // 반복문을 빠져나온다.
    }
}
```

#### continue

* 코드 실행을 멈추는 것 까지는 동일하나 반복문을 빠져나오지 않고 다음 반복으로 점프한다.

```javascript
for (let i=0; i<10; i++){
      if(i%2){
          continue; // 숫자가 짝수일 경우 continue 문을 만나지 못한다.
      } 
      console.log(i);
}
```

### 📑 switch

* switch 문의 조건에 맞는 case 코드가 실행된다.
* break를 사용하지 않으면 해당 case 아래의 코드가 모두 실행된다.

```javascript
switch(조건) {
  case A :
          // A일 때 코드
          break;
  case B :
          // B일 때 코드
          break;
  ...
  
  default :
```
