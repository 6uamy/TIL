
pragma solidity ^0.5.7;

contract Will {
    address owner;
    uint fortune;
    bool isDeceased;

    constructor() payable public {
        owner = msg.sender; // 계약을 호출한 address
        fortune = msg.value; // 전송한 이더의 양
        isDeceased = false;
    }

    // 오직 계약을 호출한자여야 한다는 제어
    modifier onlyOwner {
        require(msg.sender == owner);
        _; 
    }

    // 조부모님이 돌아가셨다는 제어
    modifier mustBeDeceased {
        require(isDeceased == true);
        _; 
    }

    // 상속받을 주소의 배열 선언
    address payable[] familyWallets;

    // key-value 값으로 해당주소가 받은 유산을 저장
    mapping(address => uint) inheritance;

    // 각 주소에 대한 유산 설정
    function setInheritance(address payable wallet,uint amount) public onlyOwner{
        familyWallets.push(wallet); // familyWallets에 지갑주소를 push
        inheritance[wallet] = amount; // mapping된 wallet에 대한 amount 정의     
    }

    // 설정된 유산을 전송
    function payout() private mustBeDeceased {
        // for문을 통해 조건을 작성하고 반복
        for(uint i=0; i<familyWallets.length; i++) {
            //inheritance key값에 저장된 value의 eth를 수신자 주소로 전송
            familyWallets[i].transfer(inheritance[familyWallets[i]]); 
        }
    } 

    // 조부모님의 사망시 실행될 함수
    function deceased() public onlyOwner {
        isDeceased = true;
        payout();
    }
}

