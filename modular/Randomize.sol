// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

contract Randomize {
    function getRandomNumber() external view returns(uint256) {
        return block.timestamp % 9;
    }
}
