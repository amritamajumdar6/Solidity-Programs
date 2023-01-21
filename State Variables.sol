// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract StateVariables

{
    // this is a state variable
    uint public mynumber;

    function setMynumber(uint _mynumber) external
    {
        mynumber= _mynumber;
    }
    function resetMynumber() external
    {
        mynumber=0;
    }
    // what is view?
    //"view" tells solidity that this is aread-only function.
    // It does not make any updates to the Blockchain.
    function getMynumber() external view returns (uint)
    {
        return mynumber;
    }
    function getMynumberplusone() external view returns (uint)
    {
        return mynumber + 1;
    }
}
