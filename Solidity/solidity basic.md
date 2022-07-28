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

* constructor: 계약 생성 단계에서만 실행되고, 생성자가 없으면 계약은 계약 자체를 기본 생성자로 인식한다.
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
* _; : modifier를 통해 만족된 함수를 계속해서 실행한다.(해당함수에 대한 제어 가능)

### 배열 리스트 선언
```solidity
address payable[] familyWallets;
```

### mapping 선언
```solidity
mapping(_KeyType => _ValueType);

mapping(address => uint) inheritance;
```
* mapping: 값이 key-value 쌍으로 구성된 해시 테이블을 생성한다.

### address
```solidity
address wallet = 0x212...;
```
* address: Solidity에서 주소는 20byte 형식의 변수 타입이다.(ex. 이더리움 주소의 크기)

### event, emit
```solidity
event Sent(address from, address to, uint amount);
emit Sent(msg.sender, receiver, amount);
```
* event: 이벤트 호출시 해당 인자 값들을 반환한다.
* emit: 생성한 해당 이벤트를 발생시키기 위한 키워드
### error, revert
```solidity
error insufficientBalance(uint requested, uint available);

function send(address receiver, uint amount) public {
        if(amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }
```
* error: Solidity에 오류가 있음을 알릴 수 있는 기능이다.
* revert: 조건문이 참일시 해당 함수에 대한 트랜잭션이 발생하지 않도록 해주고 revert 키워드에 대한 오류 메세지를 전달한다.


### Solidity의 전역 변수
|name|returns|
|:---:|:---:|
|blockhash|Hash of the given block|
|block.coinbase (address payable)|Current block miner's address|
|block.difficulty|Current block difficulty|
|block.gaslimit|Current block gaslimit|
|block.number|Current block number|
|block.timestamp|Current block timestamp|
|gasleft() returns|Remaining gas|
|msg.data|Complete calldata|
|msg.sender (address payable)|Sender of the message (current caller)|
|msg.sig|First four bytes of the calldata|
|msg.value|Number of wei sent with the message|
|now|Current block timestamp|
|tx.gasprice|Gas price of the transaction|
|tx.origin|Sender of the transaction|
