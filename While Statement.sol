// SPDX-License-Identifier: MIT

pragma  solidity ^0.8.13;

contract WhileSum{

    function sum(uint _num) external pure returns(uint){

    uint total;
    uint i;
    
    while(i<=_num)
    {
        total += i;
        i++;
    }
    return total;
    }
}
