// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint storedData;
    address owner;

    constructor () {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner == msg.sender, "ERROR: esta funcion solo puede ser llamada por el propietario");
        _;
    }

    function setNumber(uint x) public onlyOwner {
        storedData = x;
    }

    function getNumber() public view returns (uint) {
        return storedData;
    }
}
