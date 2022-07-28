// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; 

contract Coin {
    address public minter;
    mapping(address => uint) public balances;

    event Sent(address from, address to, uint amount);

    // 계약을 배포할때만 생성자 함수가 실행된다.
    constructor() {
        minter = msg.sender;
    }

    // 계약 호출자만 토큰 생성이 가능하도록 한다.
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount; 
    }

    // 오류에 대한 정보를 반환해준다.
    error insufficientBalance(uint requested, uint available);

    // 토큰 전송 함수
    function send(address receiver, uint amount) public {
        // 잔액보다 큰 토큰을 전송할 경우 트랜잭션을 취소하고 오류 메세지를 반환한다.
        if(amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
