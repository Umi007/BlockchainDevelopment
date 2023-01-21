// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract LoopContract {

    uint [] public numbersList = [1,2,3,4,5,6,7,8,9,10];

    function checkMultipleValidity(uint _num, uint _nums) public view returns(bool) {
        if (_num % _nums == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    //Create a function that can check how many multiples there are in the 'numbersList' array for a specified number
    function multiplesChecker(uint _number) public view returns(uint) {
        uint count = 0;

        for (uint i=0; i<numbersList.length; i++) {
            if(checkMultipleValidity(numbersList[i], _number)) {
            count++;
            }
        }
        return count;
    }
}

contract LoopingPracticeContract {

    uint [] public longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] public numbersList = [1,4,34,56];

    function numCheck(uint num) public view returns(bool) {
        bool exists = false;
        for (uint i=0; i<numbersList.length; i++) {
            if (num == numbersList[i]) {
                exists = true;
            }
        }
        return exists;
    }

    function evenCheck() public view returns(uint) {
        uint count = 0;
        for (uint i=0; i<longList.length; i++) {
            if (longList[i] % 2 == 0) {
                count ++;
            }
        }
        return count;
    }
}