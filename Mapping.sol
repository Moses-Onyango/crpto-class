// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;

contract ERC20Token {
    address public banker = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    mapping(address => uint256) public balances;

    function setSomeonesBalance(address owner, uint256 amount) public {
        require(msg.sender == banker, "not banker");
            balances[owner] = amount;
        }
       
   }   //revert('not banker'); 
        
            
    

    function transferTokensBetweenAddresses(address sender, address receiver, uint256 amount) public {
        require(msg.sender == banker) ;
            balances[sender] -= amount;   // deduct/debit the sender's balance
            balances[receiver] += amount; // credit the reciever's balance
        }
            //revert('not account owner');
    
}
