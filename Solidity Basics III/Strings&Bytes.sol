// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Strings {

    string greetings = 'Hello World!';

    function helloWorld() public view returns(string memory) {
        return greetings;
    }

    function changeGreetings(string memory _change) public {
        greetings = _change;
    }

    function getChar() public view returns(uint) {
        // We have to convert strings to bytes in order to obtain the length of a string
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }

    string favColour = 'Blue';

    function returnColour() public view returns(string memory) {
        return favColour;
    }

    function changeColour(string memory _colour) public {
        favColour = _colour;
    }

    function colourCharCount() public view returns(uint) {
        bytes memory stringToBytes = bytes(favColour);
        return stringToBytes.length;
    }
}