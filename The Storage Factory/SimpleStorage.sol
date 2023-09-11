// SPDX-License-Identifier: MIT

pragma solidity 0.8.18; // stating our version

contract SimpleStorage {

    // favouriteNumber initialised to 0  if no value given

    uint256  myFavouriteNumber;

    //uint256[] listOfFavouriteNumbers;
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // dynamic array because nothing in []
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        /// Person memory newPerson = Person(_favouriteNumber, _name);
        listOfPeople.push(Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}



