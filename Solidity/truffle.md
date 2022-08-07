# 트러플 (Truffle)

### 이더리움 기반의 DApp을 계발하기 용이하도록 도와주는 블록체인 framework

* 스마트 계약 컴파일, 연결, 배포 및 바이너리 관리
* 자동화된 계약 테스트
* Scripting 가능하고 확장 가능한 배포 및 migration framework
* ERC190 표준을 사용하는 EthPM 및 NPM으로 package 관리
* build pipeline
* Truffle 환경 내에서 script를 실행하는 외부 script 실행기

### 🗒️ 트러플 설치 ``` npm install -g truffle ```

### 🗒️ 트러플 버전 확인 ``` truffle version ```

### 🗒️ 트러플 프로젝트 생성  ``` truffle init ```
***
* contracts/ : Solidity 계약 경로
* migrations/ : 스크립팅 가능한 배포 파일 경로
* test/ : App, contracts를 테스트하기 위한 테스트 파일 경로
* truffle.js : 트러플 구성 파일

### 🗒️ 게약 컴파일 ``` truffle compile ```
***
#### 변경된 계약에 대한 컴파일을 진행한다.
 
### 🗒️ 마이그레이션 (migration) ``` truffle migrate (--reset) ```
***
#### 배포가능한 스크립트들을 migration 해준다. ``` --reset ``` 을 사용하여 처음부터 <br>모든 마이그레이션을 실행할 수 있다.

### 🗒️ Truffle Console ``` truffle console ```
***
#### 모든 이더리움 클라이언트에 연결하는 기본 양방향 Console

#### Truffle Console을 사용하는 이유
* Ganache 또는 geth와 같이 이미 사용 중인 클라이언트가 있다.
* 테스트넷(이더리움 네트워크)으로 마이그레이션을 진행하려는 경우
* 특정 니모닉 또는 계정 목록을 사용하려는 경우

### 🗒️ Truffle Develop ``` truffle develop ```
***
#### 개발 블록체인도 생성하는 양방향 Console

#### Truffle Develop을 사용하는 이유
* 즉시 배포하지 않고 프로젝트 테스트만을 진행할 경우
* 특정 계정으로 작업할 필요가 없을 경우
* 별도의 블록체인 클라이언트를 설치 및 관리하고 싶지 않을 경우

#### 기본적으로 로컬 port:9545로 개발 블록체인을 생성한다.
#### 아래와 같이 ganache와 같은 구성 가능한 네트워크를 설정 하여 연결할 수 있다.
``` javascript
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    },
  },
  contracts_directory: './src/contracts/',
  contracts_build_directory: './src/truffle_abis/',
  compilers: {
    solc: {
      version: '^0.5.0',
      optimizer: {
        enabled: true,
        runs: 200
      },
    }
  }
}
```

### 🗒️ artifacts.require('contracts name')
***
#### 상호 작용할 계약을 Truffle에 알리고 마이그레이션을 시작한다.
#### ``` 'contracts name' ``` 은 해당 소스 파일 내의 계약 이름과 일치해야 한다.

### 🗒️ 외부 스크립트 실행 ``` truffle exec <path/to/file.js> ```
***
#### 계약과 상호 작용하는 외부 스크립트를 실행할 수 있다.
#### 외부 스크립트가 올바르게 실행되기 위해서는 콜백 함수를 작성해주어야 한다.
``` JavaScript
module.exports = function(callback) {
  // TODO: implement your actions

  // invoke callback
  callback();
}
```
