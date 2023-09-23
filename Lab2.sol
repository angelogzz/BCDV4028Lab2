// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TargetContract {
    string public value; // This state variable stores a string value

    constructor() {
        value = "your contract works"; // Initialize the value when the contract is deployed
    }

    function setValue(string memory _newValue) public {
        value = _newValue; // Function to update the string value
    }
}

contract CallerContract {
    address public owner;
    string public callerValue; // This state variable stores a string value

    constructor(address _targetcontract) {
        owner = _targetcontract; // Initialize the owner address when the contract is deployed
    }

    function updateValue(string calldata _newValue) external {
        callerValue = _newValue; // Update the string value in the contract
        owner = msg.sender; // Update the owner address to the sender's address
    }
}

