### 📑 Object

#### Object 기본 형식

```javascript
const man = {
  name : 'Taek',
  age : 26,
}
```

* 접근
    * man.name; // 'Taek'
    * man['age']; // 26
* 추가
    * man.gender = 'male';
    * man['hairColor'] = 'black';
* 삭제
    * delete man.hairColor;

#### method 

* Computed property: 계산된 형태의 프로퍼티

```javascript
const user = {
    [1 + 4] : 5,
    ['안녕' + '하세요'] : 'Hello'
}

user > {5: 5, 안녕하세요: 'Hello'}
```

* Object property: 객체 형태의 프로퍼티

```javascript
const man = {
  name : 'Taek',
  age : 26,
  work() { // method
    console.log('출근 중..'); 
  }
}
```

### 📑 생성자 함수

* 반복되는 객체를 여러번 반복하지 않고 생성하기 용이하게 하도록 할 때 사용한다.
* 함수명은 관례적으로 대문자를 사용한다.

```javascript
function User(name, age) {
  // this = {}
  
  this.name = name;
  this.age = age;
  this.userName = function() {
    console.log(this.name); 
  }
  
  // return this;
}

new 함수명(); // new 키워드를 통한 함수 객체를 생성해야 한다.
```



#### this

* 자신이 속한 객체 또는 자신이 생성할 인스턴스를 가리키는 자기 참조 변수이다.
* this를 통해 자신이 속한 객체 또는 자신이 생성할 인스턴스의 프로퍼티나 메서드를 참조할 수 있다.
* 객체의 method를 작성할 때는 화살표 함수로 작성하지 않는 것이 좋다.<br>Why? this키워드가 해당 함수의 객체를 가리키는 것이 아닌 윈도우나 리눅스 환경의 객체를 가리키게 된다.

### 📑 Array

* 순서가 있는 리스트라고 생각하자!
* index는 0부터 시작한다.
* 문자 뿐만 아니라 숫자, 객체, 함수 등도 포함할 수 있다.

#### length

* 배열의 길이를 구할 수 있다.

```javascript
let students[] = ['hee', 'zen', 'yun']; 
students.length // 3
``` 

#### push()

* 배열 끝에 요소를 추가한다.

```javascript
let students[] = ['hee', 'zen', 'yun']; 
students.push('xich') 
console.log(students) // ['hee', 'zen', 'yun', 'xich']
``` 

#### pop()

* 배열 끝 요소를 제거한다.

```javascript
let students[] = ['hee', 'zen', 'yun']; 
students.pop()
console.log(students) // ['hee', 'zen']
``` 

#### unshift, shift

* 배열 앞 요소를 추가/제거한다.

```javascript
let students[] = ['hee', 'zen', 'yun']; 

// 추가
students.unshift('one')
console.log(students) // ['one', 'hee', 'zen']

// 제거
students.shift()
console.log(students) // ['hee', 'zen']
``` 

#### splice(n, m)

* 배열의 특정 요소를 지운다.
* n: 시작, m: 개수
* 삭제된 요소를 반환할 때 사용할 수도 있다.

#### concat(arr2, arr3)

* 두 문자열을 합쳐준다.

#### map

* 배열을 값을 재정의 할 때 사용한다.

```javascript
const arr = [1, 2, 3, 4, 5];
const result = arr.map(x => x * 2);

console.log(result);
// [2, 4, 6, 8, 10];
```

#### join()

* 배열의 모든 요소를 연결해 하나의 문자열로 만들어준다.

```javascript
arr.join(구분자); // " ", "," ...
```

#### Symbol()

* 유일한 식별자를 생성하기 위해 사용한다.
* 유일성이 보장된다.


```javascript
const id = Symbol('id');
const id2 = Symbol('id');
```

#### forEach(fn)

* 배열을 반복하여 나타낼 경우에 사용한다.
* item: 요소, index: 0, 1, 2...

```javascript
let users = ['Mike', 'Tom', 'Jimmy'];

users.forEach((item, index, arr) => {
    // fn code here
});
```

#### indexOf()

* 해당 요소의 index를 반환하고 없으면 -1을 반환한다.

#### includes()

* 해당 요소를 포함하는지 여부를 확인할 경우 사용한다.
* true / false 를 반환한다.

