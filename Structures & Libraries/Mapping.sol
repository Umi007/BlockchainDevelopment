// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

//Mapping is a reference type as arrays and structs, it allows you to save data and add a key that you specifiy and then retrieve that information later
//In solidity you can't iterate through a map

contract Mapping {

    mapping(address => uint) public myMap; 

    function getAddress(address _addr) public view returns(uint) {
        return myMap[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}