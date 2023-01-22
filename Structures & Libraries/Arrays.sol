// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Arrays {

    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedSizeArray;

    //The push() method adds one or more elements to the end of an array and returns the new length of said array
    function push(uint number) public {
        myArray.push(number);
    }

    //The pop() method removes the last element from anb array and returns that value 
    function pop() public {
        myArray.pop();
    }

    //The length method is used to return the length of a string/array
    function getLength() public view returns(uint) {
        return myArray.length;
    }

    //How to delete something from an array?
    function remove(uint i) public {
        delete myArray[i];
        // If you delete in an array the length of the array remains the same, the item at the index becomes 0
    }
}

//How to delete something properly from an array using the pop() method
contract ProperDelete {

    uint[] public changeArray;

    function removeElement(uint i) public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }

    function test() public {
        for (uint i=1; i<=4; i++) {
            changeArray.push(i);
        }
    }

    function getChangeArray() public view returns(uint[] memory) {
        return changeArray;
    }
}