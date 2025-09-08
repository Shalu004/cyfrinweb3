//Solidity can store data in six different locations.
//1.Calldata 2.Memory 3.Storage 4.Stack 5.Code 6.Logs

//calldata v/s memory
// >calldata and memory are temporary storage locations for variables during function execution. calldata is read-only, used for function inputs that can't be modified.
// In contrast, memory allows for read-write access, letting variables be changed within the function. 

//note:- Most variable types default to memory automatically. However, for strings, you must specify either memory or calldata due to the way arrays are handled in memory.
// a string is recognized as an array of bytes. On the other hand, primitive types, 
//like uint256 have built-in mechanisms that dictate how and where they are stored, accessed and manipulated.

//Storage
//Variables stored in storage are persistent on the blockchain, retaining their values between function calls and transactions.