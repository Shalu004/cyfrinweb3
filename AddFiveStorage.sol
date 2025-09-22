//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    // we want everything to be same as simplestorage function, expect that we want the store function to 
    //store given value + 5
    //this can be done by overriding
    //for excessing overriding methode, the function in which we want to apply overriding must contain the keyword "virtual"

    function store(uint256  _newNumber) public override{
        favoriteNumber = _newNumber+5;
    }
}