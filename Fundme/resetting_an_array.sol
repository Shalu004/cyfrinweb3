>reetting an array
?Why is resetting an array needed?

Why reset the funders array during withdraw?
When users call fund() in your smart contract, their addresses are typically pushed into a funders array,
and a mapping tracks how much each address sent. If you don’t reset this array after withdrawing:
The old funders’ addresses will still be stored in the array.
Future funding rounds would mix new contributions with old funders.
It could cause incorrect logic, such as refunding old funders again or misrepresenting who contributed.
Arrays stored on-chain take up storage → leaving it unreset increases storage cost over time.
So, resetting ensures a clean slate for the next round of funding.

>>>>funders = new address[]();