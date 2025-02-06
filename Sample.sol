// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
contract SampleContract {
    address public owner;
    mapping (address => uint256) public payments;
// 0xd9145CCE52D386f254917e481eB44e9943F39138
// state
    constructor() {
        owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    function payForItem() public payable {
        //msg.sender - возвращает того кто стучится в функцию
        // msg.value - учтобы узнать сколько денег прилетело, специальная функция
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public {
        address payable _to = payable (owner);
        address _thisContract = address(this);

        _to.transfer(_thisContract.balance);
    }
} 