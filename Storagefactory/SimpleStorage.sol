//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{

     uint256 public favoriteNumber;
    

    //structure for multiple person's information storage
    struct person{
        uint256 mynumber;
        string name;
    }

    // array dynamic for the same use
    person[] public list_of_person;
    mapping(string => uint256) public nameTofavNumber;

    function store(uint256 _mynumber) public virtual {
        favoriteNumber = _mynumber;
    }

    function retrieve()  public view returns( uint256){
        return favoriteNumber;
    }
 
    function addperson(string memory _name, uint256 _mynumber) public{
        list_of_person.push(person(_mynumber, _name));
        nameTofavNumber[_name]=_mynumber;
     } 

}