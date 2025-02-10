// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Demo {

    //Struct

    struct Payment {
        uint amount;
        uint timestamp;
        address from;
        string message;    
    }

    struct Balance {
        uint totalPayments; // порядковый номер платежа
        mapping(uint => Payment) payments;
    }

    mapping(address => Balance) public balances;

    function getPayment(address _addr, uint _index) public view returns (Payment memory) {
        return balances[_addr].payments[_index];
    }

    function pay(string memory message) public payable {
        uint paymentNum = balances[msg.sender].totalPayments;
        balances[msg.sender].totalPayments++;

        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );

        balances[msg.sender].payments[paymentNum] = newPayment;
    }

    // // Byte
    // bytes32 public myVar = "test";
    // bytes public myDynVar = unicode"Привет мир!";
    // // 1 --> 32
    // //32*8 = 256

    // function demoB() public view returns(uint) {
    //     return myDynVar.length;
    // }

    // //array
    // uint[] public itemsD;
    // uint public len;
    // function demoD() public {
    //     itemsD.push(4);
    //     itemsD.push(5);
    //     len = items.length;
    // }

    // function sampleMemory() public view returns(uint[] memory) {
    //     uint[] memory tempArray = new uint[] (10);
    //     tempArray[0] = 1;
    //     return tempArray;
    // }

    // uint[3][2] public items; // 2 - внешний массив, 3 - вложенный массив
    // uint[10] public itemsOne = [1,2,3];

    // function demo() public {
    //     items = [
    //         [3,4,5],
    //         [6,7,8]
    //     ];
    // }

    // //Enum
    // enum Status { Paid, Delivered, Received } // при вызове, элементы енум будут выглядеть как индексы 0,1,2
    // Status public currentStatus;

    // function pay() public {
    //     currentStatus = Status.Paid;    
    // }
    
    // function delivered() public {
    //     currentStatus = Status.Delivered;          
    // }

}