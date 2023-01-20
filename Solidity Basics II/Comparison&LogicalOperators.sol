// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract ComparisonOperators {

    uint a = 4;
    uint b = 6;

    function compare() public view {
        require(a > b, "That is false");
        // Require basically checks whether something is true or not, if it is not true then at the end of the function you can put a return statement/string 
    }
}

contract LogicalOperators {

    // a < b && b > c - logical AND
    // a < b || b > c - logical OR
    // !(a < b) - logical NOT

    uint a = 4;
    uint b = 5;

    function logic() public view returns(uint) {
        uint result = 0;
        if(a < b && a == 4) {
            result = a + b;
        }
        return result;
    }
}

contract Excersise {

    uint a = 17;
    uint b = 32;

    function task() public view returns(uint) {
        uint result = 0;
        if(b > a && a != b) {
            result = a * b;
        } 
        else {
            result = (a * b) / b;
        }
        return result;
    }
}

contract FinalExcersise {

    uint a = 300;
    uint b = 12;
    uint f = 47;

    function finalize() public view returns(uint) {
        uint d = 23;
        if (a >= b && b < f) {
            d = (d *= d) - b;
        }
        return d;
    }
}