// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;
    
contract Allowance {
 
    mapping(uint => mapping(address => address)) allowance;

    //this function removes the spenders allowance
    function remove(uint contractID, address _addrOwner) public {
        delete allowance[contractID][_addrOwner];
    }

    function newContract(uint contractID, address _addrOwner, address _addrSpender) public {
        allowance[contractID][_addrOwner] = _addrSpender;
    }

    function viewContract(uint contractID, address _addrOwner) public view returns(address){
        return allowance[contractID][_addrOwner];
    }
}