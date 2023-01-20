// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract C {

    uint public data = 10;

    function x() internal pure returns(uint) {
        uint newData = 25;
        return newData;
    }

    function y() public pure returns(uint) {
        return x();
    }
}