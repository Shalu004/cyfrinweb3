//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.19;

contract storeanimal{
    struct Animal{
        uint256 id;
        string name;
        
    }
    Animal[] public animals;
//manually adding new animals
    constructor(){
        animals.push(Animal(1, 'dog'));
        animals.push(Animal(2,'cat'));
    }
// to add new animals
    function addAnimal(string memory _name) public{
        require(bytes(_name).length>0 , "Animal name cannot be empty");
        uint256 newId = animals.length+1;
        animals.push(Animal(newId, _name));
    }
// to view all animals
    function getAnimal() public view returns(Animal[] memory){
        return animals;
    }
// to get total no.of animals
    function getAnimalcount() public view returns(uint){
        return animals.length;
    }
}