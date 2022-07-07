// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract jdFaucet {
    function withdraw(uint withdrawAmount) public {
        require(withdrawAmount <= 0.1 ether);

        payable(msg.sender).transfer(withdrawAmount);
    }
    
    fallback () external payable {}
    receive () external payable {}
}