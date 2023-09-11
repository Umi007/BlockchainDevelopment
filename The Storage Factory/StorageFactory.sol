// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    // type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Need Address
        // Need ABI = Application Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        // More efficient version of sfStore :)
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}

