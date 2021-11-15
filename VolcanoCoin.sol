// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

contract VolcanoCoin {
    
    uint public supply;
    
    address owner;
    
    modifier onlyOwner() {
        if(msg.sender==owner) {
            _;
        }
    }
    
    constructor() {
        supply=10000;
        owner= msg.sender;
    }
        
    function getSupply() public view returns(uint) {
        return supply;
    }
    
    function setSupply(uint _newSupply) public onlyOwner{
        supply = _newSupply;
    }
    
}