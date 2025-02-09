// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Demo {
    
    //словарь, ассоциативный массив, хэщ, дикт

    //хранилище вида - ключ, значение
    //вытаскиваем значение по ключу
    mapping (address => uint) public payments;
    //временных mapping и address создать не получится
    // сложнные типы данных не могут быть ключами, только значениями

    // уникальный тип данных для solidity
    address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // свойства:
    function getBalace(address targetAddr) public view returns (uint) { 
        //view - функция вызывается не через транзакцию, а через вызов 
        //returns (uint) - тот тип данных, который возвращает функция
        return targetAddr.balance;
    } 

    function transferTo (address targetAddr, uint amount) public {
        address payable _to = payable (targetAddr);           
        _to.transfer(amount);
        // когда используем transfer то переводим деньги с текущего адреса
        // то есть с контракта
    }

    function receiveFunds() public payable {
        // если функция payable и на нее пришли средства
        // то по умолчанию эти средства зачислятся на текущий счёт
        payments[msg.sender] = msg.value;
        // value (количество денег присланных) - можно использовать только если функция payable
        // sender - возвращает тип данных address
    } 


    // строки реализованы не очень хорошо в solidity
    //длину строки померить нельзя
    //строки нельзя склеивать
    //строки нельзя сравнивать
    string public myStr = "test"; // storage
    
    function demo (string memory newValueStr) public {
        // string memory myTepStr = "temp";
        myStr = newValueStr;
    }
}