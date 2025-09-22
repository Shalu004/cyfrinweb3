//Inheritance in Solidity lets you reuse and extend existing code without rewriting it.


//Inheritance allows you to modify (override) parent contract functions in a child contract. But Solidity is explicit:

virtual → Put this in the parent contract function you want to allow modification.

override → Put this in the child contract function that replaces the parent’s behavior.

Example:

// Parent contract
contract SimpleStorage {
    uint256 public number;

    function store(uint256 _number) public virtual {
        number = _number;
    }
}

// Child contract
contract ExtraStorage is SimpleStorage {
    // override the store function
    function store(uint256 _number) public override {
        number = _number + 5; // adds custom behavior
    }
}
