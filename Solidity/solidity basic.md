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

### constructor 함수 선언
```solidity
constructor() payable public {

    }
```

* constructor: 스마트 계약이 배포될 때 호출되는 생성자 함수, 가시성(visibility)이 internal or public
* payable: 이더(eth)를 주고 받기 위해 사용된다. 

### 제어자(modifier) 선언
```solidity
modifier onlyOwner {
        require(msg.sender == owner);
        _; 
    }
```
* modifier: 사전에 주어진 조건에 따라 함수의 동작을 변경시키기 위해 사용된다.
* require: Solidity에서 사용되는 조건문같은 형식으로 require조건이 만족되어야 함수가 실행된다.
* _; : 조건이 만족될시 함수를 계속해서 진행한다.(접근자에 대한 제어가 가능)

### 배열 리스트 선언
```solidity
address payable[] familyWallets;
```

### mapping 선언
```solidity
mapping(address => uint) inheritance;
```
* mapping: 해당 값이 key-value값으로 저장된다.
