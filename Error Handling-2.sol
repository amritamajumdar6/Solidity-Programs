// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract ErrorHandling
{
    function testRequire(uint _number1, uint _number2) external pure
    {
        require(_number1 >= _number2, "If Number1 is greater than Number2"); 
    }
}
