// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

//Nested mapping can be used wehen you want to store maps within maps
//For example, if you wanted to store movies that belong to a certain person, or address
//Another example is allowing one address to spend on behalf of another address 
// mapping(key => mapping(key2 => value2)) nestedMap;

contract NestedMapping {

    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovie;

    struct Movie {
        string title;
        string director;
    }

    function addMovie(uint movieID, string memory _title, string memory _director) public {
        movie[movieID] = Movie(_title, _director);
    }

    function addMyMovie(uint movieID, string memory _title, string memory _director) public {
        myMovie[msg.sender][movieID] = Movie(_title, _director);
        //'msg.sender' is a global variable that captures the address that is calling the contract
    }
}