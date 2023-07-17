// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

contract Example {
    mapping(address => uint256) private balances;


    function getBalance(address addr_) public view returns(uint256) {
        return balances[addr_];
    }

    function setBalance(address addr_, uint256 amount_) public returns(bool) {
        balances[addr_] = amount_;
        return true;
    }
}
