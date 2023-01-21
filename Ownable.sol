// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Ownable
{
    address public Firstowner;

    constructor()
    {
        Firstowner = msg.sender;
    }

    modifier onlyFirstowner()
    {
        require(msg.sender == Firstowner, "You are not the owner of this contract.");
        _;
    }

    function setAnotherOwner(address _newOwner) external onlyFirstowner
    {
        //Check that _newOwner is not address(0) and throw an error "new owner = zero address" if it is.
        require(_newOwner != address(0), "The new owner is at Zero address.");
        Firstowner = _newOwner;
    }
}
