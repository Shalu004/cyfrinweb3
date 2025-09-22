//payable → lets a function or address receive Ether.

//require → enforces rules, reverts on failure.
//ex:-
function withdraw(uint amount) public {
    require(amount <= address(this).balance, "Not enough balance!");
    payable(msg.sender).transfer(amount);
}

//Wei, Gwei, Ether → denominations of Ether (1 Ether = 10^18 Wei)

//msg.value is a special global variable that holds the amount of Ether (in Wei) sent along with a transaction.