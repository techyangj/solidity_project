// pragma solidity 0.8.0; Fixed version
// pragma solidity >= 0.8.2 < 0.8.5;   range version   [0.8.2, 0.8.5)
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    //This gets initialized to zero!
    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // People public person = People({favoriteNumber: 2, name: "Techyangj"});
    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view pure
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
