// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;


contract ExampleContract {

    // mapping(uint256 => mapping (uint256 => mapping (uint256(uint256 => uint256))) public myMapping;

    // function setMapping(uint256 key, uint256 value) public {
    //     myMapping[key] = value;
    // }

    // function getValue(uint256 key, uint256 key2, uint256 key3, uint256 value, ) public view returns (uint256) {
    //     return myMapping;[key][key2[key3]= va;
    // }
        mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
        balances[owner] = amount;
    }

    function transferTokensBetweenAddresses(address sender, address receiver, uint256 amount) public {
        balances[sender] -= amount;   // deduct/debit the sender's balance
        balances[receiver] += amount; // credit the reciever's balance
    }

    function updateAmount(address any, uint256 amount) public {
        balances[any] = amount;
    }
  
    function whoami() public view returns (address, address) {
		address sender = msg.sender;
		address _contract = address(this);
        return  (sender, _contract);

	}
}

