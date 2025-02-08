// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Demo {
    uint8 public myVal = 254;

    function inc() public {
        //myVal = myVal+1;
        //myVal+=1;
        unchecked { // отлавливает ошибки переполнения
        // при превышении диапазона то эта функция откатит число к самому минмальному значению
        // при уменьшении ниже нижней границы - откатит число до максимального значения
            myVal++; // myVal--
        }
                    
    }


    // uint public minimum;
    // uint public maximum;

    // function demo () public {
    //     minimum = type(uint8).min;
    //     maximum = type(uint8).max;
    // }

    // поддержки дробных чисел или чисел с точкой - 
    // пока в зачаточном состоянии
    // usigned integers - число без знака (всегда положительное)
    // используются когда мы работаем с входными денежными средствами
    // надо записывать размерность числа:
    // 2^8 = 256 - размерность числа
    // 0 ---> (256 - 1) - диапазон чисел для этой размерности
    // uint16 (+8 к предудыщей)
    //uint24
    //uint32
    //...uint256 - максимальная размерность
    //uint8 public myUint = 42;

    // signed intergers - числа с знаком
    // размерности задаются аналогично Uint 
    // резервировируется 1 бит на знак =>
    // 2^7 = 128
    //-128 ---> (128-1) - диапазон числа для этой размерности
    // int256 public myInt = -42;
    // int8 public mySmallInt = -1;
    // function demo(uint _inputUint) public {
    //     uint localUint = 42;
    //     localUint + 1;
    //     localUint - 1;
    //     localUint * 1;
    //     localUint / 2; 
    //     // делим целые числа ---> результат тоже целое число
    //     // отбрасывается дробная часть
    //     localUint ** 2; // возведение в степень
    //     localUint % 2; // остаток от деления
    //     - myInt; // унарный минус - преобразование числа в противоположное по знаку
    //     localUint == 1; // результат сравнения - булевое значение true или false
    //     localUint != 1;
    //     localUint > 1;
    //     localUint >= 1;
    //     localUint < 2;
    //     localUint <= 2;
    // }


    // bool public myBool = true; //state
   
    // function muFunc(bool _inputBool) public {
    //     bool localBool = false; //local
    //     localBool && _inputBool; // логическое и
    //     localBool || _inputBool; // логическое или
    //     localBool == _inputBool; // равенство
    //     localBool != _inputBool; // неравенство
    //     !localBool; //инверсия
    //     if(_inputBool || localBool) {
            
    //     }  
    // }
}
