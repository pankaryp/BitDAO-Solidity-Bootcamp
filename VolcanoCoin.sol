// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;

contract VolcanoCoin {
    uint256 public supply;

    address owner;

    modifier onlyOwner() {
        if (msg.sender == owner) {
            _;
        }
    }

    event SupplySet(uint256);

    constructor() {
        supply = 10000;
        owner = msg.sender;
    }

    function getSupply() public view returns (uint256) {
        return supply;
    }

    function setSupply(uint256 _newSupply) public onlyOwner {
        supply = _newSupply;
        emit SupplySet(_newSupply);
    }
}
