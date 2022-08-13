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
