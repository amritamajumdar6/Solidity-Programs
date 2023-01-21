// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract SimpleStorage
{
    //This is a state variable
    string public mystring;

    function set(string calldata _mystring) external
    {
        mystring = _mystring;
    }

    function get() external view returns (string memory)
    {
        return mystring;
    }
}
