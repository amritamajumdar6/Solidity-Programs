// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Counter
{
    uint public count;

    function Increment() external
    {
        count+=1; // Count = count + 1
    }

    function Decrement() external
    {
        count -=1; //count = count -1
    }
}
