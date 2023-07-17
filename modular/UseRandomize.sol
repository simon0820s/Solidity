// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

interface IRandomize {
    function getRandomNumber() external view returns(uint256);
}

contract UseRandomize {
    function useRandomize(address contractAddress_) public view returns(uint256) {
        IRandomize randomize = IRandomize(address(contractAddress_));
        return randomize.getRandomNumber();
    }
}

