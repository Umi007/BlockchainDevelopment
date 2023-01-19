// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract basicFunctions {

    function addValues() public view returns(uint) {

        // All variables wrote in functions remains localised in the function 
        uint a = 5;
        uint b = 7;
        uint result = a + b;
        return result;
    }

    //Create a multiplication calculator
    function multiplyCalculator(uint a, uint b) public view returns(uint) {
        uint result = a * b;
        return result;
    }
}