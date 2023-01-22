// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// A constructor is an optional function which initializes state variables of the contract, it can either be internal or public

contract Member {
    string name;
    uint age;

    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }
}

// This is an option to call the constructor into use
contract Teacher is Member/*('Rachel', 28)*/ {

    // This is the same thing as puting ('Rachel', 28) above, except it allows the user to input a name and age after compilation
    constructor(string memory n, uint a) Member(n, a) public {}

    function getName() public view returns(string memory) {
        return name;
    }
}

contract Base {
    uint data;

    constructor(uint _data) public {
        data = _data;
    }
}

contract Derived is Base(5) {
    
    function getData() public view returns(uint) {
        return data;
    }
}