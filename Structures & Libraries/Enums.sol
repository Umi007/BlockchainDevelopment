// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

//Enums restrict a variable to have one of only a few predefined values, the values in this list are called enums
//Enums help reduce the amount of bugs in code

contract enums {

    //Can get large, medium or small fries
    enum frenchFriesSize {LARGE, MEDIUM, SMALL}

    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.MEDIUM;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns(frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public view returns(uint) {
        return uint(defaultChoice);
    }
}

contract ShirtColours {

    enum shirtColour {RED, WHITE, BLUE}

    shirtColour choice;
    shirtColour constant defaultChoice = shirtColour.BLUE;

    function setWhite() public {
        choice = shirtColour.WHITE;
    }

    function getChoice() public view returns(shirtColour) {
        return choice;
    }

    function getDefaultChoice() public view returns(shirtColour) {
        return defaultChoice;
    }
}