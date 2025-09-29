/*Constructor Function:

A constructor is a special function in Solidity that runs only once when the contract is deployed.
It is usually used to set initial values, such as the owner of the contract.
It cannot be called again after deployment.

Regular Functions:
Can be called multiple times after deployment.
Used to perform ongoing tasks like transferring Ether, reading values, etc.
*/

//Example:

constructor() {
    owner = msg.sender; // runs only once during deployment
}




>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Function: withdrawOnlyFirstAccountRemix

Here’s a secure implementation that allows only the first Remix account (msg.sender) to withdraw all funds:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FundContract {
    address public owner;

    // Constructor sets the first deployer (Remix account 0) as owner
    constructor() {
        owner = msg.sender;
    }

    // Allow anyone to send Ether
    receive() external payable {}

    // Withdraw function restricted to the first Remix account
    function withdrawOnlyFirstAccountRemix() public {
        require(msg.sender == owner, "Not authorized: Only first account can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}
