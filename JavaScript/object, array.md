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

* Object property로 할당 된 함수

```javascript
const man = {
  name : 'Taek',
  age : 26,
  work() { // method
    console.log('출근 중..'); 
  }
}
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
students.pop()
console.log(students) // ['hee', 'zen']
``` 

