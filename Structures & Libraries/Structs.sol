// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

//Structs are types that are used to represent a record, for example keeping track of your movies in a library
//You can track the following attributes about each movie

contract Structs {

    struct Movie {

        string director;
        string title;
        uint movieID;
    }

    Movie movie01;
    Movie movie02;
    Movie comedy;

    function setMovies() public {
        movie01 = Movie('Blade Runner', 'Ridley Scott', 1);
        movie02 = Movie('Pulp Fiction', 'Quentin Tarantino', 2);
        comedy = Movie('Pineapple Express', 'David Green', 3);
    }

    function getMovie01ID() public view returns(uint) {
        return movie01.movieID;
    }

    function getMovie02ID() public view returns(uint) {
        return movie02.movieID;
    }

        function getMovie03ID() public view returns(uint) {
        return comedy.movieID;
    }
}