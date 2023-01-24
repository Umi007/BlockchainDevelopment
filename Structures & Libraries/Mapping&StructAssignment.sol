// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


contract Assignment {

    mapping(string => uint) movie;

    struct Movie {
        string title;
        string director;
    }

    Movie movietemplate;

    function addMovie(uint movieID, string memory _title, string memory _director) public {
        movietemplate = Movie(_title, _director);
        movie[movietemplate.title] = movieID;
        movie[movietemplate.director] = movieID;
    } 

    function getAddress(string memory title) public view returns(uint) {
        return movie[title];
    }
}

//Similar to attempt, just need to think about what mapping is really used for :)
contract AssignmentSolution {

    mapping(uint => Movie) movie;

    struct Movie {
        string title;
        string director;
    }

    function addMovie(uint movieID, string memory _title, string memory _director) public {
        movie[movieID] = Movie(_title, _director);
    }
}