### 주석 작성 
```solidity 
// this is our code goes
```  

### Solidity의 버전 정의
```solidity 
pragma solidity ^version; 
pragma solidity >(=)version <(=)version;
```

### 스마트계약의 정의
```solidity 
contract contractName {
      // write all the code inside here - functions and its state
}
```

### Type변수 선언
```solidity 
uint storeData = number;
string names = 'string message';
bool switchON = true/false;
    
....
```

### 함수 선언
```solidity 
contract contractName {
      // write all the code inside here - functions and its state
      uint data;
      
      // set and get
      function set(type x) public/private {
            // function code here
            data = x;
      }
      
      function get() public/private view returns (type) {
            // function code here
            return data;
      }
```

* public: 얼마든지 계약 외부에서도 함수를 호출할 수 있게 해준다.
* private: 계약 내부에서만 함수 호출이 가능하다.
* view: 함수의 상태를 수정할 수 없다는 것을 알리는 전역 제어자(Global Modifier)이다.
