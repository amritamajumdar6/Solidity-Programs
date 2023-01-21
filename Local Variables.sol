// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract LocalVariables
{
    // These are state variables.
    uint public firstvariable;
    bool public secondvariable;
    address public myAddress;

    function localvariables() external
    {
        // local variables are not saved to Blockchain.
        // These are local variables
        uint Mynumber=123;
        bool Myboolean= false;

        Mynumber = Mynumber+123;
        Myboolean= true;

        firstvariable=123;
        secondvariable=true;
        myAddress=address(1);
    }
}
