# 트러플 (Truffle)

## 이더리움 기반의 DApp을 계발하기 용이하도록 도와주는 블록체인 framework

* 스마트 계약 컴파일, 연결, 배포 및 바이너리 관리
* 자동화된 계약 테스트
* Scripting 가능하고 확장 가능한 배포 및 migration framework
* ERC190 표준을 사용하는 EthPM 및 NPM으로 package 관리
* build pipeline
* Truffle 환경 내에서 script를 실행하는 외부 script 실행기

## 트러플 설치 ``` npm install -g truffle ```

## 트러플 버전 확인 ``` truffle version ```

## 트러플 프로젝트 생성  ``` truffle init ```
* contracts/ : Solidity 계약 경로
* migrations/ : 스크립팅 가능한 배포 파일 경로
* test/ : App, contracts를 테스트하기 위한 테스트 파일 경로
* truffle.js : 트러플 구성 파일

## 게약 컴파일 ``` truffle compile ```

### 변경된 계약에 대한 컴파일을 진행한다.

## 마이그레이션 (migration) ``` truffle migrate (--reset) ```

### 배포가능한 스크립트들을 migration 해준다. ``` --reset ``` 을 사용하여 처음부터 <br>모든 마이그레이션을 실행할 수 있다.
